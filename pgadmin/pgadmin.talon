os: windows
os: linux
title: /pgAdmin/
-

tag(): user.tabs

# tabs
tab next: key(alt-shift-])
tab previous: key(alt-shift-[)
tab close: key(alt-shift-w)

# navigation
(Q|query) tool:key(alt-shift-q) 

# sql
statement join: insert("inner join")
join <user.text>$: insert("inner join {text}")
