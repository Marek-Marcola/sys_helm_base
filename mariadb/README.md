mariadb
=======

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-mariadb-wp-dc1
    : ${V:=m.m.p}
    : ${C:=scm/mariadb}
    : ${N:=ns-wordpress}
    : ${T:=statefulset}
    OPTS=(
    --set nodeport=3306
    --set nodepolicy=Local
    --set init=no
    )
