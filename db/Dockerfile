# Postgres 16 for Hatamoto (matches the pg_dump 16 client inside the app image).
# Plain defaults are baked in because Railway templates only keep references and secrets.
FROM postgres:16-bookworm@sha256:5264710be20f409750ac6dc4e5706dcef929c87e241605463f0f9aefa932a8d9
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/hatamoto"
ENV POSTGRES_USER=hatamoto \
    POSTGRES_DB=hatamoto \
    PGDATA=/var/lib/postgresql/data/pgdata
