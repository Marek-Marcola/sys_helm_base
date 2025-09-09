mariadb
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/pgsql
    helm show values scm/pgsql

Install/upgrade:

    V=x.y.z
    helm diff upgrade db-mariadb-slurm scm/mariadb --version=$V -n ns-slurm -f values-db-mariadb-slurm.yaml --install
    helm upgrade db-mariadb-slurm scm/mariadb --version=$V -n ns-slurm -f values-db-mariadb-slurm.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history db-mariadb-slurm -n ns-slurm
