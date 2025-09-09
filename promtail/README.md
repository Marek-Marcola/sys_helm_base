promtail
========

Deploy
------
Info:

    helm repo update
    helm show readme scm/promtail
    helm show values scm/promtail

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-promtail-sys scm/promtail --version=$V -n ns-promtail -f values-ap-promtail-sys.yaml --install
    helm upgrade ap-promtail-sys scm/promtail --version=$V -n ns-promtail -f values-ap-promtail-sys.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-promtail-sys -n ns-promtail
