gerrit
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/gerrit
    helm show values scm/gerrit

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-gerrit scm/gerrit --version=$V -n ns-gerrit -f values-ap-gerrit.yaml --install
    helm upgrade ap-gerrit scm/gerrit --version=$V -n ns-gerrit -f values-ap-gerrit.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-gerrit -n ns-gerrit
