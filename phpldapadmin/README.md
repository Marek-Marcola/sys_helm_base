phpldapadmin
============

Deploy
------
Info:

    helm repo update
    helm show readme scm/phpldapadmin
    helm show values scm/phpldapadmin

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-phpldapadmin scm/phpldapadmin --version=$V -n ns-phpldapadmin -f values-ap-phpldapadmin.yaml --install
    helm upgrade ap-phpldapadmin scm/phpldapadmin --version=$V -n ns-phpldapadmin -f values-ap-phpldapadmin.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-phpldapadmin -n ns-phpldapadmin
