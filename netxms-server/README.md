netxms-server
=============

Deploy
------
Info:

    helm repo update
    helm show readme scm/netxms-server
    helm show values scm/netxms-server

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-netxms-server scm/netxms-server --version=$V -n ns-netxms -f values-ap-netxms-server.yaml --install
    helm upgrade ap-netxms-server scm/netxms-server --version=$V -n ns-netxms -f values-ap-netxms-server.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-netxms-server -n ns-netxms
