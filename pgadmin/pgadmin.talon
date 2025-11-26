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
fields materials: insert ("filename,materialid")
fields papers insert ("papername,country")

# query tool
run query: key(f5)
save results: key(f8)