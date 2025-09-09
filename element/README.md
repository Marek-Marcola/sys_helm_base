element
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/element
    helm show values scm/element

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-element-mcp scm/element --version=$V -n ns-element -f values-ap-element-mcp.yaml --install
    helm upgrade ap-element-mcp scm/element --version=$V -n ns-element -f values-ap-element-mcp.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-element-mcp -n ns-element
