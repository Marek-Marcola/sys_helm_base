openldap
========

Deploy
------
Info:

    helm repo update
    helm show readme scm/openldap
    helm show values scm/openldap

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-openldap scm/openldap --version=$V -n ns-openldap -f values-ap-openldap.yaml --install
    helm upgrade ap-openldap scm/openldap --version=$V -n ns-openldap -f values-ap-openldap.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-openldap -n ns-openldap
