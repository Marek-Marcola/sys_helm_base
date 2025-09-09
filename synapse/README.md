synapse
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/synapse
    helm show values scm/synapse

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-synapse scm/synapse --version=$V -n ns-matrix -f values-ap-synapse.yaml --install
    helm upgrade ap-synapse scm/synapse --version=$V -n ns-matrix -f values-ap-synapse.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-synapse -n ns-matrix
