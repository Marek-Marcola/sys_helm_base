nginx
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/nginx
    helm show values scm/nginx

Install/upgrade:

    V=x.y.z
    helm diff upgrade ap-nginx-sys scm/nginx --version=$V -n ns-nginx -f values-ap-nginx-sys.yaml --install
    helm upgrade ap-nginx-sys scm/nginx --version=$V -n ns-nginx -f values-ap-nginx-sys.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history ap-nginx-sys -n ns-nginx
