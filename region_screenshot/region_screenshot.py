from typing import Optional

from talon import Context, Module, actions, app, clip, screen, ui
from talon.canvas import Canvas, MouseEvent
from talon.types import Point2d, Rect

mod = Module()
mod.tag("region_screenshot_active", desc="Active while marking a two-click screenshot region")

ctx = Context()

_canvas: Optional[Canvas] = None
_first_point: Optional[Point2d] = None
_current_point: Optional[Point2d] = None
_clip_mode = False


def _virtual_rect() -> Rect:
    screens = ui.screens()
    left = min(s.rect.left for s in screens)
    top = min(s.rect.top for s in screens)
    right = max(s.rect.right for s in screens)
    bottom = max(s.rect.bot for s in screens)
    return Rect(left, top, right - left, bottom - top)


def _rect_from_points(p1: Point2d, p2: Point2d) -> Optional[Rect]:
    x = min(p1.x, p2.x)
    y = min(p1.y, p2.y)
    w = abs(p1.x - p2.x)
    h = abs(p1.y - p2.y)
    if w <= 0 or h <= 0:
        return None
    return Rect(x, y, w, h)


def _on_draw(c):
    if _first_point is None or _current_point is None:
        return
    rect = _rect_from_points(_first_point, _current_point)
    if rect is None:
        return
    c.paint.style = c.paint.Style.STROKE
    c.paint.color = "ff0000ff"
    c.paint.stroke_width = 2
    c.draw_rect(rect)


def _on_mouse(e: MouseEvent):
    global _first_point, _current_point
    if e.event == "mousemove":
        _current_point = e.gpos
    elif e.event == "mousedown" and e.button == 0:
        if _first_point is None:
            _first_point = e.gpos
        else:
            _finish(_first_point, e.gpos)
    elif e.event == "mousedown" and e.button == 1:
        _cancel()


def _start(clip_mode: bool):
    global _canvas, _first_point, _current_point, _clip_mode
    if _canvas is not None:
        return
    _first_point = None
    _current_point = None
    _clip_mode = clip_mode
    _canvas = Canvas.from_rect(_virtual_rect())
    _canvas.blocks_mouse = True
    _canvas.register("draw", _on_draw)
    _canvas.register("mouse", _on_mouse)
    ctx.tags = ["user.region_screenshot_active"]


def _teardown():
    global _canvas, _first_point, _current_point
    if _canvas is not None:
        _canvas.unregister("draw", _on_draw)
        _canvas.unregister("mouse", _on_mouse)
        _canvas.close()
        _canvas = None
    _first_point = None
    _current_point = None
    ctx.tags = []


def _cancel():
    _teardown()


def _finish(p1: Point2d, p2: Point2d):
    clip_mode = _clip_mode
    rect = _rect_from_points(p1, p2)
    _teardown()
    if rect is None:
        app.notify("Region screenshot: start and end points were the same, cancelled")
        return
    if clip_mode:
        img = screen.capture_rect(rect)
        clip.set_image(img)
    else:
        actions.user.screenshot_rect(rect)


@mod.action_class
class Actions:
    def region_screenshot_start():
        """Starts a two-click region screenshot: click two opposite corners to capture and save to file"""
        _start(clip_mode=False)

    def region_screenshot_start_clip():
        """Starts a two-click region screenshot: click two opposite corners to capture to clipboard"""
        _start(clip_mode=True)

    def region_screenshot_cancel():
        """Cancels an in-progress two-click region screenshot"""
        _cancel()
