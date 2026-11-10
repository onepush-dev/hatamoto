#!/bin/bash
set -e
mkdir -p /data/secrets /data/uploads
chown -R app:app /data
chmod 700 /data/secrets
# API_PORT follows Railway's PORT so the domain and healthcheck always line up.
export API_PORT="${PORT:-8090}"
# Wait for Postgres (fresh template deploys start both services together).
HP=$(echo "$DATABASE_URL" | sed -E 's#^[a-z]+://[^@]*@([^/?]+).*#\1#')
H=${HP%%:*}; P=${HP##*:}; [ "$P" = "$HP" ] && P=5432
for i in $(seq 1 90); do
  (echo > "/dev/tcp/$H/$P") 2>/dev/null && break
  sleep 2
done
exec setpriv --reuid=app --regid=app --init-groups hatamoto "$@"
