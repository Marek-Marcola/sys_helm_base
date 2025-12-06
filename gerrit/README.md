gerrit
======

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-gerrit-dc1
    : ${V:=m.m.p}
    : ${C:=scm/gerrit}
    : ${N:=ns-gerrit}
    OPTS=(
    --set nodeport=8084
    --set nodeportssh=31418
    --set init=no
    )
    INIT=(
     "install -m 755 -o 701 -g 701 -v -d /var/opt/gerrit/$A"
    )
