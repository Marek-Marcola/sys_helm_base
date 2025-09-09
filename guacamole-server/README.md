guacamole-server
================

Deploy
------
Info:

    helm repo update
    helm show readme scm/guacamole-server
    helm show values scm/guacamole-server

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-gs scm/guacamole-server --version=$V -n ns-guacamole -f values-ap-gs.yaml --install
    helm upgrade ap-gs scm/guacamole-server --version=$V -n ns-guacamole -f values-ap-gs.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-gs -n ns-guacamole
