haproxy
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/haproxy
    helm show values scm/haproxy

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-haproxy-mcp scm/haproxy --version=$V -n ns-haproxy -f values-ap-haproxy-mcp.yaml --install
    helm upgrade ap-haproxy-mcp scm/haproxy --version=$V -n ns-haproxy -f values-ap-haproxy-mcp.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-haproxy-mcp -n ns-haproxy
