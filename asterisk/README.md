asterisk
========

Deploy
------
Info:

    helm repo update
    helm show readme scm/asterisk
    helm show values scm/asterisk

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-asterisk-mcp scm/asterisk --version=$V -n ns-asterisk -f values-ap-asterisk-mcp.yaml --install
    helm upgrade ap-asterisk-mcp scm/asterisk --version=$V -n ns-asterisk -f values-ap-asterisk-mcp.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-asterisk-mcp -n ns-asterisk
