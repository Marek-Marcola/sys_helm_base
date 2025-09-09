keycloak
========

Deploy
------
Info:

    helm repo update
    helm show readme scm/keycloak
    helm show values scm/keycloak

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-keycloak scm/keycloak --version=$V -n ns-keycloak -f values-ap-keycloak.yaml --install
    helm upgrade ap-keycloak scm/keycloak --version=$V -n ns-keycloak -f values-ap-keycloak.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-keycloak -n ns-keycloak
