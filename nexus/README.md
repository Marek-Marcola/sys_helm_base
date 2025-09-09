nexus
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/nexus
    helm show values scm/nexus

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-nexus scm/nexus --version=$V -n ns-nexus -f values-ap-nexus.yaml --install
    helm upgrade ap-nexus scm/nexus --version=$V -n ns-nexus -f values-ap-nexus.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-nexus -n ns-nexus
