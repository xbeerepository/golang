#!/bin/bash

if [ -f /opt/xbee/xbeeagent.pid ]; then
	pid=`cat /opt/xbee/xbeeagent.pid`
	/root/go/bin/dlv --listen=:{{ .pack.port }} --headless=true --api-version=2 attach $pid
fi


