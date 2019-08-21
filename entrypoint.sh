#!/bin/bash

[ -n "$APP_DEBUG_FILE" ] && export APP_DEBUG="$(cat $APP_DEBUG_FILE)"
[ -n "$APP_ENV_FILE" ] && export APP_ENV="$(cat $APP_ENV_FILE)"
[ -n "$APP_SECRET_FILE" ] && export APP_SECRET="$(cat $APP_SECRET_FILE)"
[ -n "$CORS_ALLOW_ORIGIN_FILE" ] && export CORS_ALLOW_ORIGIN="$(cat $CORS_ALLOW_ORIGIN_FILE)"
[ -n "$DATABASE_URL_FILE" ] && export DATABASE_URL="$(cat $DATABASE_URL_FILE)"
[ -n "$MAIL_USER_FILE" ] && export MAIL_USER="$(cat $MAIL_USER_FILE)"
[ -n "$MAIL_PASS_FILE" ] && export MAIL_PASS="$(cat $MAIL_PASS_FILE)"
[ -n "$MAIL_HUB_FILE" ] && export MAIL_HUB="$(cat $MAIL_HUB_FILE)"
[ -n "$GOOGLE_API_KEY_FILE" ] && export GOOGLE_API_KEY="$(cat $GOOGLE_API_KEY_FILE)"

exec "$@"
