os: windows
os: linux
title: /Thunderbird/
-

settings():
  key_hold = 50

tree: 
  key(alt-g shift-o)

go personal: 
  key(alt-g o up:2 enter down enter)

go work: 
  key(alt-g o up:3 enter down enter enter)


(star|start) message:key(s)

# tabs
close tab:key("ctrl-w")
next tab:key("ctrl-tab")
previous tab:key("ctrl-shift-tab")
ction(app.tab_next):key("ctrl-tab")	
action(app.tab_previous):key("ctrl-shift-tab")	
action(app.tab_close):key("ctrl-w")	
