#!/bin/sh

PIDFILE="/usr/local/springapp/servers/configserver/configserver.pid"

if [ ! -f "$PIDFILE" ] || ! kill -0 "$(cat "$PIDFILE")"; then

echo "configuration server is not running..."

else

echo "stopping configuration server..."

PID="$(cat "$PIDFILE")"

kill -9 $PID

rm "$PIDFILE"

echo "....configuration server stopped"

fi
