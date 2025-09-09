wordpress
=========

Deploy
------
Info:

    helm repo update
    helm show readme scm/wordpress
    helm show values scm/wordpress

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-wordpress scm/wordpress --version=$V -n ns-wordpress -f values-ap-wordpress.yaml --install
    helm upgrade ap-wordpress scm/wordpress --version=$V -n ns-wordpress -f values-ap-wordpress.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-wordpress -n ns-wordpress
