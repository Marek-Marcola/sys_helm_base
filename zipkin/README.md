zipkin
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/zipkin
    helm show values scm/zipkin

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-zipkin scm/zipkin --version=$V -n ns-zipkin -f values-ap-zipkin.yaml --install
    helm upgrade ap-zipkin scm/zipkin --version=$V -n ns-zipkin -f values-ap-zipkin.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-zipkin -n ns-zipkin
