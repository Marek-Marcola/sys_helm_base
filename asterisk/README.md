asterisk
========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-asterisk-dc1
    : ${V:=m.m.p}
    : ${C:=scm/asterisk}
    : ${N:=ns-asterisk}
    OPTS=(
    --set mode=0
    )
