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

fold list: key(ctrl-\)
go bottom: key(pagedown)

file list: key(f3)
edit file: key(f4)
copy file: key(f5)

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
page line bottom: key(G)
page search: key(/)
page search next: key(n)
page search previous: key(shift-n)

# navigation
go root: insert("cd /\n")
go home: insert("cd ~\n")
go bottom: key(pagedown)

show log post: insert("less /var/log/pgsql\n")

sudo: insert("sudo ")

# docker
docker ps: insert("docker ps\n")
docker images: insert("docker images\n")
docker containers: insert("docker container ls\n")
docker compose up: insert("docker compose up\n")
docker compose down: insert("docker compose down\n")
docker compose logs: insert("docker compose logs\n")
docker compose logs follow: insert("docker compose logs -f\n")
docker compose build: insert("docker compose build\n")
docker exec bash <container>: insert("docker exec -it {container} bash\n")
docker exec shell <container>: insert("docker exec -it {container} sh\n")
docker logs <container>: insert("docker logs {container}\n")
docker stop <container>: insert("docker stop {container}\n")
docker start <container>: insert("docker start {container}\n")
docker restart <container>: insert("docker restart {container}\n")
docker remove <container>: insert("docker rm {container}\n")
docker remove image <image>: insert("docker rmi {image}\n")
