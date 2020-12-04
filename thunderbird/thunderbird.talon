os: windows
os: linux
title: /Thunderbird/
-

# navigation
meecount:
	key(alt-home alt-g O down right)
	key(enter)
	key(ctrl-k tab tab)
	key(end)
	
feecount:
	key(alt-home alt-g O down right down)
	key(enter)
	key(ctrl-k tab tab)
	key(end)

folder list: key(ctrl-k tab)
message list: key(ctrl-k tab tab)
doon: key(ctrl-k tab tab f6)
 
# threads
collapse: key(left)
expand: key(right)
expand all:key(*)
collapse all:key(\)
watch:key(w)

(star|start) message:keep(s)

# tabs
close tab:key("ctrl-w")
next tab:key("ctrl-tab")
previous tab:key("ctrl-shift-tab")
ction(app.tab_next):key("ctrl-tab")	
action(app.tab_previous):key("ctrl-shift-tab")	
action(app.tab_close):key("ctrl-w")	
