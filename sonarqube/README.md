sonarqube
=========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-sonarqube-dc1
    : ${V:=m.m.p}
    : ${C:=scm/sonarqube}
    : ${N:=ns-sonarqube}
    OPTS=(
    --set nodeport=8092
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o 435 -g 435 -v -d /var/opt/$APN/$A"
     "install -m 755 -o 435 -g 435 -v -d /var/opt/$APN/$A/extensions"
    )
