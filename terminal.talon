tag: terminal 
-
settings():
  key_hold = 50

# Midnight Commander
night run: insert("mc\n")
night run root: insert("sudo mc\n")
sudo: insert("sudo ")
night up: key(left)
night down: key(right)
night search: key(alt-s)
much window next:
     key(ctrl-a)
     key(n)

much window previous:
     key(ctrl-a)
     key(p)

fold list: key(alt-/)
go bottom: key(pagedown)

# tmux
much window new: key(ctrl-a-c)
much window close: key(ctrl-a-&)
much detach: key(ctrl-a-d)
much window numb <number_small>$: key('ctrl-a-{number_small}')

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
