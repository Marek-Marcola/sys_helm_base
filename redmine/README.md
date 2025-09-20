redmine
=======

Deploy
------
Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-redmine-dc1
    : ${V:=m.m.p}
    : ${C:=scm/redmine}
    : ${N:=ns-redmine}
    OPTS=(
    --set nodeport=4081
    --set envs[0].name=REDMINE_SUBURI
    --set envs[0].value=/redmine/dc1
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o 300  -g 300  -v -d /var/opt/redmine/$A"
    )
