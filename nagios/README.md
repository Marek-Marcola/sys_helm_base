nagios
======

Deploy
------
Info:

    helm repo update
    helm show readme scm/nagios
    helm show values scm/nagios

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-nagios-sys scm/nagios --version=$V -n ns-nagios -f values-ap-nagios-sys.yaml --install
    helm upgrade ap-nagios-sys scm/nagios --version=$V -n ns-nagios -f values-ap-nagios-sys.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-nagios-sys -n ns-nagios
