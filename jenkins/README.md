jenkins
=======

Deploy
------
Info:

    helm repo update
    helm show readme scm/jenkins
    helm show values scm/jenkins

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-jenkins-mcp scm/jenkins --version=$V -n ns-jenkins -f values-ap-jenkins-mcp.yaml --install
    helm upgrade ap-jenkins-mcp scm/jenkins --version=$V -n ns-jenkins -f values-ap-jenkins-mcp.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-jenkins-mcp -n ns-jenkins
