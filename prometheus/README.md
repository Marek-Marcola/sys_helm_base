prometheus
==========

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-prometheus-dc1
    : ${V:=m.m.p}
    : ${C:=scm/prometheus}
    : ${N:=ns-prometheus}
    PROMETHEUS_OPTS="
    --storage.tsdb.path=/var/opt/prometheus/data
    --storage.tsdb.retention.time=30d
    --storage.tsdb.retention.size=150GB
    --web.page-title=dc1
    --web.external-url=/dc1/prometheus/
    --web.enable-lifecycle
    --web.enable-admin-api
    --log.level=debug
    "
    OPTS=(
    --set nodeport=9090
    --set opts="$(echo $PROMETHEUS_OPTS)"
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o root -g root -v -d /var/opt/prometheus/$A"
    )
