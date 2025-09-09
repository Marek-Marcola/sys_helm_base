clamav
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/clamav
    helm show values scm/clamav

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-clamav scm/clamav --version=$V -n ns-av -f values-ap-clamav.yaml --install
    helm upgrade ap-clamav scm/clamav --version=$V -n ns-av -f values-ap-clamav.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-clamav -n ns-av
