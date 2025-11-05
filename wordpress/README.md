wordpress
=========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-wordpress-dc1
    : ${V:=m.m.p}
    : ${C:=scm/wordpress}
    : ${N:=ns-wordpress}
    OPTS=(
    --set nodeport=8088
    --set nodepolicy=Local
    --set envs[0].name=NGINX_INIT
    --set envs[0].value=no
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /var/opt/wordpress/$A"
     "install -m 755 -o root -g root -v -d /var/opt/nginx/$A"
    )
