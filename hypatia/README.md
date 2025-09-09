hypatia
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/hypatia
    helm show values scm/hypatia

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-hypatia scm/hypatia --version=$V -n ns-av -f values-ap-hypatia.yaml --install
    helm upgrade ap-hypatia scm/hypatia --version=$V -n ns-av -f values-ap-hypatia.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-hypatia -n ns-av
