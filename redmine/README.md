redmine
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/redmine
    helm show values scm/redmine

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-redmine scm/redmine --version=$V -n ns-redmine -f values-ap-redmine.yaml --install
    helm upgrade ap-redmine scm/redmine --version=$V -n ns-redmine -f values-ap-redmine.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-redmine -n ns-redmine
