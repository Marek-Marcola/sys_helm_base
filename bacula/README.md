bacula
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/bacula
    helm show values scm/bacula

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-bacula scm/bacula --version=$V -n ns-bacula -f values-ap-bacula.yaml --install
    helm upgrade ap-bacula scm/bacula --version=$V -n ns-bacula -f values-ap-bacula.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-bacula -n ns-bacula
