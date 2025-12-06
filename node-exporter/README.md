node-exporter
=============

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-node-exporter
    : ${V:=m.m.p}
    : ${C:=scm/node-exporter}
    : ${N:=ns-telemetry}
    OPTS=(
    --set hostport=9100
    )
