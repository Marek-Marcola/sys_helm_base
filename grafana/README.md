grafana
=======

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-grafana-dc1
    : ${V:=m.m.p}
    : ${C:=scm/grafana}
    : ${N:=ns-grafana}
    OPTS=(
    --set nodeport=3000
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A/provisioning"
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A/provisioning/access-control"
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A/provisioning/dashboards"
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A/provisioning/datasources"
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A/provisioning/notifiers"
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A/provisioning/plugins"
     "install -m 755 -o 472 -g 472 -v -d /var/opt/grafana/$A"
    )
