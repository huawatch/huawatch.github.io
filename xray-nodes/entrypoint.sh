#!/bin/sh
# Generates /etc/xray/config.json from env vars and runs xray.
# Required: UUID (VLESS client id). Optional: WS_PATH (default /ray), PORT (default 3000).
set -e
PORT="${PORT:-3000}"
: "${UUID:?UUID env var is required}"
WS_PATH="${WS_PATH:-/ray}"
mkdir -p /etc/xray
cat > /etc/xray/config.json <<EOF
{
  "log": {"loglevel": "warning"},
  "inbounds": [{
    "port": ${PORT},
    "protocol": "vless",
    "settings": {
      "clients": [{"id": "${UUID}", "flow": ""}],
      "decryption": "none"
    },
    "streamSettings": {
      "network": "ws",
      "wsSettings": {"path": "${WS_PATH}"}
    }
  }],
  "outbounds": [{"protocol": "freedom"}]
}
EOF
exec /usr/local/bin/xray run -c /etc/xray/config.json
