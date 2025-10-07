mediawiki
=========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-mediawiki-dc1
    : ${V:=m.m.p}
    : ${C:=scm/mediawiki}
    : ${N:=ns-mediawiki}
    OPTS=(
    --set nodeport=8041
    --set nodepolicy=Local
    --set envs[0].name=NGINX_INIT
    --set envs[0].value=no
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /var/opt/mediawiki/$A"
     "install -m 755 -o root -g root -v -d /var/opt/nginx/$A"
     "install -m 755 -o none -g none -v -d /var/opt/sqlite/data/$A"
    )
