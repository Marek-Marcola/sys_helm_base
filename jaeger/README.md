jaeger
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/jaeger
    helm show values scm/jaeger

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-jaeger scm/jaeger --version=$V -n ns-jaeger -f values-ap-jaeger.yaml --install
    helm upgrade ap-jaeger scm/jaeger --version=$V -n ns-jaeger -f values-ap-jaeger.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-jaeger -n ns-jaeger
