slurm-exporter
==============

Deploy
------
Info:

    helm repo update
    helm show readme scm/slurm-exporter
    helm show values scm/slurm-exporter

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-slurm-exporter scm/slurm-exporter --version=$V -n ns-slurm -f values-ap-exporter.yaml --install
    helm upgrade ap-slurm-exporter scm/slurm-exporter --version=$V -n ns-slurm -f values-ap-slurm-exporter.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-slurm-exporter -n ns-slurm
