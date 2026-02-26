roundcube
=========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-roundcube-dc1
    : ${V:=m.m.p}
    : ${C:=scm/roundcube}
    : ${N:=ns-roundcube}
    OPTS=(
    --set mode=0
    --set nodeport=8071
    --set nodepolicy=Local
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o root -g root -v -d /var/opt/nginx/$A"
     "install -m 755 -o none -g none -v -d /var/opt/$APN/$A"
     "install -m 755 -o none -g none -v -d /var/opt/$APN/$A/logs"
     "install -m 755 -o none -g none -v -d /var/opt/$APN/$A/temp"
     "install -m 755 -o none -g none -v -d /var/opt/sqlite/data/$A"
    )
