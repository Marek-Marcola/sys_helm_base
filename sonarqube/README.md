sonarqube
=========

Deploy
------
Info:

    helm repo update
    helm show readme scm/sonarqube
    helm show values scm/sonarqube

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-sonarqube scm/sonarqube --version=$V -n ns-sonarqube -f values-ap-sonarqube.yaml --install
    helm upgrade ap-sonarqube scm/sonarqube --version=$V -n ns-sonarqube -f values-ap-sonarqube.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-sonarqube -n ns-sonarqube
