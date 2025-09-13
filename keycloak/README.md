keycloak
========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-keycloak-dc1
    : ${V:=m.m.p}
    : ${C:=scm/keycloak}
    : ${N:=ns-keycloak}
    OPTS=(
    --set nodeport=8091
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o none -g none -v -d /var/opt/keycloak/$A/data"
    )
