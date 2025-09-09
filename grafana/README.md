grafana
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/grafana
    helm show values scm/grafana

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-grafana scm/grafana --version=$V -n ns-telemetry -f values-ap-grafana.yaml --install
    helm upgrade ap-grafana scm/grafana --version=$V -n ns-telemetry -f values-ap-grafana.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-grafana -n ns-telemetry
