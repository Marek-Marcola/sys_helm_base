hmdm
====

Deploy
------
Info:

    helm repo update
    helm show readme scm/hmdm
    helm show values scm/hmdm

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-hmdm scm/hmdm --version=$V -n ns-hmdm -f values-ap-hmdm.yaml --install
    helm upgrade ap-hmdm scm/hmdm --version=$V -n ns-hmdm -f values-ap-hmdm.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-hmdm -n ns-hmdm
