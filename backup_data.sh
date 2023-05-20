kubectl exec -it chatsync-chatwoot-postgresql-0 /bin/sh
pg_dump -Fc --no-acl --no-owner -U postgres chatwoot_production >/tmp/cw.dump # password: postgres
exit
kubectl cp chatsync-chatwoot-postgresql-0:/tmp/cw.dump ./cw.dump
