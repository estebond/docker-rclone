#!/usr/bin/with-contenv sh

if [ -z "$REMOTE_SYNC" ]; then
 echo "Error: REMOTE_SYNC environment variable was not passed to the container."
 exit 1
else
 synccmd="rclone --config "/config/.rclone.conf" sync /data $REMOTE_SYNC:/"
 echo "Executing => $synccmd"
 eval "$synccmd"
fi