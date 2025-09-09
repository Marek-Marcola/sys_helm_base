netxms-web
==========

Deploy
------
Info:

    helm repo update
    helm show readme scm/netxms-web
    helm show values scm/netxms-web

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-netxms-web scm/netxms-web --version=$V -n ns-netxms -f values-ap-netxms-web.yaml --install
    helm upgrade ap-netxms-web scm/netxms-web --version=$V -n ns-netxms -f values-ap-netxms-web.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-netxms-web -n ns-netxms
