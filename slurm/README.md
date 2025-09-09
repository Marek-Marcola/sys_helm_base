slurm
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/slurm
    helm show values scm/slurm

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-slurm-dc1 scm/slurm --version=$V -n ns-slurm -f values-ap-slurm-dc1.yaml --install
    helm upgrade ap-slurm-dc1 scm/slurm --version=$V -n ns-slurm -f values-ap-slurm-dc1.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-slurm-dc1 -n ns-slurm
