plantuml
========

Deploy
------
Info:

    helm repo update
    helm show readme scm/plantuml
    helm show values scm/plantuml

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-plantuml scm/plantuml --version=$V -n ns-plantuml -f values-ap-plantuml.yaml --install
    helm upgrade ap-plantuml scm/plantuml --version=$V -n ns-plantuml -f values-ap-plantuml.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-plantuml -n ns-plantuml
