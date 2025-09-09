envoy
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/envoy
    helm show values scm/envoy

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-envoy scm/envoy --version=$V -n ns-envoy -f values-ap-envoy.yaml --install
    helm upgrade ap-envoy scm/envoy --version=$V -n ns-envoy -f values-ap-envoy.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-envoy -n ns-envoy
