loki
====

Deploy
------
Info:

    helm repo update
    helm show readme scm/loki
    helm show values scm/loki

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-loki-sys scm/loki --version=$V -n ns-loki -f values-ap-loki-sys.yaml --install
    helm upgrade ap-loki-sys scm/loki --version=$V -n ns-loki -f values-ap-loki-sys.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-loki-sys -n ns-loki
