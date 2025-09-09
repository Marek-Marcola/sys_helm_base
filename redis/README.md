redis
=====

Deploy
------
Info:

    helm repo update
    helm show readme scm/redis
    helm show values scm/redis

Install/upgrade:

    V=x.y.z
    helm diff upgrade db-redis-dc1 scm/redis --version=$V -n ns-redis -f values-ap-redis-dc1.yaml --install
    helm upgrade db-redis-dc1 scm/redis --version=$V -n ns-redis -f values-ap-redis-dc1.yaml -i \
      --create-namespace --wait --dry-run

Verify:

    helm list -A
    helm history db-redis-dc1 -n ns-redis
