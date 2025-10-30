slurm
=====

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-slurm-dc1
    : ${V:=m.m.p}
    : ${C:=scm/slurm}
    : ${N:=ns-slurm}
    OPTS=(
    --set vols[0].name=etc-sssd
    --set vols[0].hostPath.path=/etc/sssd
    --set vols[0].hostPath.type=Directory
    --set vols[1].name=etc-ap-munge-dc1
    --set vols[1].hostPath.path=/usr/local/etc/ap-munge-dc1
    --set vols[1].hostPath.type=Directory
    --set mnts[0].name=etc-sssd
    --set mnts[0].mountPath=/etc/sssd
    --set mnts[0].readOnly=true
    --set mnts[1].name=etc-ap-munge-dc1
    --set mnts[1].mountPath=/usr/local/etc/munge
    --set mnts[1].readOnly=true
    )
    INIT=(
     "install -m 755 -o root -g root -v -d /usr/local/etc/$A"
     "install -m 755 -o slurm -g slurm -v -d /var/opt/slurm/$A"
     "install -m 755 -o slurm -g slurm -v -d /var/opt/slurm/$A/jobcomp"
    )
