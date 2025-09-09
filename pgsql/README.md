pgsql
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/pgsql
    helm show values scm/pgsql

Install/upgrade:

    V=x.y.z
    helm diff upgrade pg-mx scm/pgsql --version=$V -n ns-matrix -f values-pg-mx.yaml --install
    helm upgrade pg-mx scm/pgsql --version=$V -n ns-matrix -f values-pg-mx.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history pg-mx -n ns-matrix
