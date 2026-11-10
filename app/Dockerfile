# Hatamoto CMS on Railway: official ghcr.io/zen-labs-corp/hatamoto v1.2.1 (Apache-2.0), binary unmodified.
# Railway volumes are root-owned, so the wrapper prepares /data (state, secrets, uploads) and then drops
# to the image's unprivileged `app` user (uid 10001) before starting the upstream supervisor.
FROM ghcr.io/zen-labs-corp/hatamoto:v1.2.1
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/hatamoto"
USER root
ENV ENVIRONMENT=production \
    MEDIA_UPLOAD_DIR=/data/uploads \
    HATAMOTO_UPDATES=notify \
    HATAMOTO_TELEMETRY=off \
    HATAMOTO_SITE_NAME="My Site" \
    CSP_ENFORCE=false \
    HATAMOTO_TRUSTED_PROXIES="100.64.0.0/10,10.0.0.0/8,172.16.0.0/12,fd00::/8"
COPY railway-start.sh /usr/local/bin/railway-start.sh
RUN chmod +x /usr/local/bin/railway-start.sh
EXPOSE 8090
ENTRYPOINT ["railway-start.sh"]
CMD ["supervise"]
