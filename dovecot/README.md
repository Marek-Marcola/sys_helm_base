dovecot
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/dovecot
    helm show values scm/dovecot

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-dovecot scm/dovecot --version=$V -n ns-dovecot -f values-ap-dovecot.yaml --install
    helm upgrade ap-dovecot scm/dovecot --version=$V -n ns-dovecot -f values-ap-dovecot.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-dovecot -n ns-dovecot
