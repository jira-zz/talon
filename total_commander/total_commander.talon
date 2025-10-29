os: windows
os: linux
title: /Total Commander/
-

tag(): user.tabs

# file operations
file edit: key("f4")
file copy: key("f5")
file move: key("f6")  
file rename: key("shift-f6")
file select:key("insert")
file delete: key("f8")

# sorting
sort by date:key("ctrl-f5")
sort by name:key("ctrl-f3")

#tabs
tab new: key("ctrl-t")
tab close: key("ctrl-w")
tab next:key("ctrl-tab")
tab previous: key("ctrl-shift-tab")
action(app.tab_open):key("ctrl-t")	
action(app.tab_next):key("ctrl-tab")	
action(app.tab_previous):key("ctrl-shift-tab")	
action(app.tab_close):key("ctrl-w")	

#folders
fold up:key("backspace")
fold root:key("ctrl-p")
same that:key("ctrl-o")
fold make|make folder:key("f7")

#panels
fold list:key("ctrl-d")
fold left:key("alt-f1")
fold right:key("alt-f2")

prompt here:key("ctrl-alt-p")
