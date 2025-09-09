guacamole-client
================

Deploy
------
Info:

    helm repo update
    helm show readme scm/guacamole-client
    helm show values scm/guacamole-client

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-gc scm/guacamole-client --version=$V -n ns-guacamole -f values-ap-gc.yaml --install
    helm upgrade ap-gc scm/guacamole-client --version=$V -n ns-guacamole -f values-ap-gc.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-gc -n ns-guacamole
