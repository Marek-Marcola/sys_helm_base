sydent
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/sydent
    helm show values scm/sydent

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-sydent scm/sydent --version=$V -n ns-matrix -f values-ap-sydent.yaml --install
    helm upgrade ap-sydent scm/sydent --version=$V -n ns-matrix -f values-ap-sydent.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-sydent -n ns-matrix
