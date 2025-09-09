prometheus
==========

Deploy
------
Info:

    helm repo update
    helm show readme scm/prometheus
    helm show values scm/prometheus

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-prometheus scm/prometheus --version=$V -n ns-prometheus -f values-ap-prometheus.yaml --install
    helm upgrade ap-prometheus scm/prometheus --version=$V -n ns-prometheus -f values-ap-prometheus.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-prometheus -n ns-prometheus
