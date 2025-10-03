pgsql
=====

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-pgsql-sonarqube-dc1
    : ${V:=m.m}
    : ${C:=scm/pgsql}
    : ${N:=ns-sonarqube}
    OPTS=(
    --set nodeport=5466
    --set init=no
    --set envs[0].name=PGSQL_DB
    --set envs[0].value=sonarqube
    )
