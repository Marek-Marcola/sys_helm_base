asterisk
========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-asterisk-dc1
    : ${V:=x.y.z}
    : ${C:=scm/asterisk}
    : ${N:=ns-asterisk}
    OPTS=(
    --set mode=0
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o 700 -g 700 -v -d /var/opt/$APN/$A"
    )
