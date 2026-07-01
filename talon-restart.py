import os
from talon import Module, actions, ui

mod = Module()


@mod.action_class
class Actions:
    def talon_restart():
        """Restart Talon"""
        talon_app = ui.apps(pid=os.getpid())[0]
        os.startfile(talon_app.exe)
        actions.sleep("100ms")
        talon_app.quit()