#!/usr/bin/bash

case "${1}" in
  start)
    exec java -Djava.util.logging.config.file=/etc/jibri/logging.properties -jar /usr/share/jibri/jibri.jar --config /etc/jibri/config.json
  ;;
  graceful)
    exec curl -X POST http://127.0.0.1:3333/jibri/api/internal/v1.0/gracefulShutdown
  ;;
  stop)
    exec curl -X POST http://127.0.0.1:3333/jibri/api/internal/v1.0/shutdown
  ;;
  *)
    echo "Invalid action specified" >&2
    exit 1
esac
