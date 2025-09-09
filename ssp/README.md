self-service-password
=====================

Deploy
------
Info:

    helm repo update
    helm show readme scm/ssp
    helm show values scm/ssp

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-ssp scm/ssp --version=$V -n ns-ssp -f values-ap-ssp.yaml --install
    helm upgrade ap-ssp scm/ssp --version=$V -n ns-ssp -f values-ap-ssp.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-ssp -n ns-ssp
