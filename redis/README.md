redis
=====

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/db-redis-dc1
    : ${V:=m.m.p}
    : ${C:=scm/redis}
    : ${N:=ns-redis}
    OPTS=(
    --set nodeport=6379
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
    )
