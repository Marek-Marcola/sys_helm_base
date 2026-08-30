dovecot
=======

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-dovecot-dc1
    : ${V:=x.y.z}
    : ${C:=scm/dovecot}
    : ${N:=ns-dovecot}
    OPTS=(
    --set mode=0
    --set nodeport=1141
    --set nodeportssl=1991
    --set nodeportlmtp=2421
    --set nodepolicy=Local
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o root -g root -v -d /var/opt/dovecot/$A"
     "install -m 755 -o 5000 -g 5000 -v -d /var/opt/dovecot/$A/vmail"
    )
