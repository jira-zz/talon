tag: terminal 
-
settings():
  key_hold = 50

# Midnight Commander
night run: insert("mc\n")
night run root: insert("sudo mc\n")
night up: key(left)
night down: key(right)
night search: key(alt-s)

much window previous:
     key(ctrl-b)
     key(p)

fold list: key(alt-/)
go bottom: key(pagedown)

# tmux
much window next:
     key(ctrl-b)
     key(n)
much window previous:
     key(ctrl-b)
     key(p)
much window new: key(ctrl-b-c)
much window close: key(ctrl-b-&)
much detach: key(ctrl-b-d)
much window numb <number_small>$: key('ctrl-b-{number_small}')

# pager
page next: key(space)
page previous: key(ctrl-b)
line bottom: key(G)
page search: key(/)
search next: key(n)
search previous: key(shift-n)

# navigation
go root: insert("cd /\n")
go home: insert("cd ~\n")
go bottom: key(pagedown)

show log post: insert("less /var/log/pgsql\n")

sudo: insert("sudo ")