bacula
======

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-bacula-dc1
    : ${V:=m.m.p}
    : ${C:=scm/bacula}
    : ${N:=ns-bacula}
    OPTS=(
    --set nodeport_dir=9101
    --set nodeport_fd=9102
    --set nodeport_sd=9103
    --set bacula_dir=1
    --set bacula_fd=1
    --set bacula_sd=1
    --set vols[0].name=var-backup-$APN
    --set vols[0].hostPath.path=/netarch/backup/$APN
    --set vols[0].hostPath.type=Directory
    --set mnts[0].name=var-backup-$APN
    --set mnts[0].mountPath=/var/backup/$APN
    --set mnts[0].readOnly=false
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o root -g root -v -d /var/opt/$APN/$A"
     "install -m 755 -o root -g root -v -d /netarch/backup/$APN"
    )
