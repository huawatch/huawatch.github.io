# Multi-stage: official xray image has no shell, so copy only the binary into Alpine.
# Binary path verified from the official image config: /usr/local/bin/xray
# No secrets in this repo: UUID and WS_PATH are injected as env vars at runtime.
FROM ghcr.io/xtls/xray-core:latest AS xray

FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY --from=xray /usr/local/bin/xray /usr/local/bin/xray
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 3000
ENTRYPOINT ["/entrypoint.sh"]
