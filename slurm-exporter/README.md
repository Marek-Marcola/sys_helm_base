slurm-exporter
==============

Deploy
------
hman env:

    # cat /usr/local/etc/hman.d/ap-slurm-exporter-dc1
    : ${V:=m.m.p}
    : ${C:=scm/slurm-exporter}
    : ${N:=ns-slurm}
    OPTS=(
    --set nodeport=9999
    --set envs[0].name=SLURM_EXPORTER_API_URL
    --set envs[0].value=192.168.24.32:6820
    --set envs[1].name=SLURM_EXPORTER_API_USER
    --set envs[1].value=root
    --set envs[2].name=SLURM_EXPORTER_API_TOKEN
    --set envs[2].value=xxxxx[...]xxxxx
    )
