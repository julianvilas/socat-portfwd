#!/bin/ash

[ -z "$SOCAT_PORT" ] || [ -z "$TARGET_HOST" ] || [ -z "$TARGET_PORT" ] && echo "required env vars: SOCAT_PORT, TARGET_HOST and TARGET_PORT" && exit

socat TCP4-LISTEN:${SOCAT_PORT},fork TCP4:${TARGET_HOST}:${TARGET_PORT}
