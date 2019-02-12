#!/bin/sh
PIDFILE="/usr/local/springapp/servers/configserver/configserver.pid"
LOGFILE="/usr/local/springapp/servers/logs/configserver_out.log"


if [ -f "$PIDFILE" ] && kill -0 $(cat "$PIDFILE"); then
echo "configuration server  is running"
exit 1
fi

nohup java -jar /usr/local/springapp/servers/configserver/configserver-1.0.jar > $LOGFILE 2>&1 &echo $! > $PIDFILE

echo "configuration server start..."
