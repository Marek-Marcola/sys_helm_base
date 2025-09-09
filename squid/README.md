squid
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/squid
    helm show values scm/squid

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-squid-mcp scm/squid --version=$V -n ns-squid -f values-ap-squid-mcp.yaml --install
    helm upgrade ap-squid-mcp scm/squid --version=$V -n ns-squid -f values-ap-squid-mcp.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-squid-mcp -n ns-squid
