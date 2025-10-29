os: windows
os: linux
title: /Thunderbird/
-

tag():user.tabs

settings():
  key_hold = 50

go personal: 
  key(alt-g o up:2 enter down enter)

go work: 
  key(alt-g o up:3 enter down enter enter)


# tabs
tab close:key("ctrl-w")
tab next:key("ctrl-tab")
tab previous:key("ctrl-shift-tab")
action(app.tab_next):key("ctrl-tab")	
action(app.tab_previous):key("ctrl-shift-tab")	
action(app.tab_close):key("ctrl-w")	
