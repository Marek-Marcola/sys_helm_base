openldap
========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-openldap-dc1
    : ${V:=m.m.p}
    : ${C:=scm/openldap}
    : ${N:=ns-openldap}
    OPTS=(
    --set nodeport=389
    --set nodeportssl=636
    --set nodepolicy=Local
    --set image.registry=scr.dc.local:5443
    --set envs[0].name=OPENLDAP_ID
    --set envs[0].value=dc1
    --set-literal envs[1].name=OPENLDAP_URLS
    --set-literal envs[1].value="ldap:///,ldaps:///"
    --set-literal envs[2].name=OPENLDAP_DEBUG
    --set-literal envs[2].value="stats,stats2,sync"
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o 55 -g 55 -v -d /var/opt/openldap/$A"
    )
