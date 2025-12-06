cgit
====

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-cgit-dc1
    : ${V:=m.m.p}
    : ${C:=scm/cgit}
    : ${N:=ns-cgit}
    OPTS=(
    --set nodeport=8085
    --set nodepolicy=Local
    --set envs[0].name=NGINX_INIT
    --set envs[0].value=no
    --set vols[0].name=gitroot
    --set vols[0].hostPath.path=/var/opt/gerrit/ap-gerrit-dc1/git
    --set vols[0].hostPath.type=Directory
    --set mnts[0].name=gitroot
    --set mnts[0].mountPath=/var/opt/gitroot
    --set mnts[0].readOnly=true
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o root -g root -v -d /var/opt/nginx/$A"
    )
