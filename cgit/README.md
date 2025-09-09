cgit
====

Deploy
------
Info:

    helm repo update
    helm show readme scm/cgit
    helm show values scm/cgit

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-cgit scm/cgit --version=$V -n ns-cgit -f values-ap-cgit.yaml --install
    helm upgrade ap-cgit scm/cgit --version=$V -n ns-cgit -f values-ap-cgit.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-cgit -n ns-cgit
