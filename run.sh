#!/usr/bin/env sh
[ -z "$USERS" ] && echo "Please remember to pass in a list of users (email addresses) using -e USERS" && exit 1
[ -z "$PASSWORDS" ] && echo "Please remember to pass in a list of passwords using -e PASSWORDS" && exit 1

envsubst < /etc/config.json > /app/config.json

/app/bin/importer.sh /app/config.json
