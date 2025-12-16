parrot(mlask): mouse_click(1)


parrot(r):
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click()
    mouse_click()
    # close the mouse grid
    user.grid_close()

parrot(prd): key("enter")
