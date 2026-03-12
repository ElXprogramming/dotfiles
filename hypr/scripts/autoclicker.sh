#!/bin/bash

PIDFILE="/tmp/autoclicker.pid"

if [ -f "$PIDFILE" ]; then
    PID=$(cat "$PIDFILE")
    kill "$PID"
    rm "$PIDFILE"
    notify-send "Auto Clicker" "OFF 🔴" -t 1000
else
    notify-send "Auto Clicker" "ON 🟢" -t 1000
    # FIX: Point to the correct socket explicitly
    (while true; do YDOTOOL_SOCKET=/tmp/.ydotool_socket ydotool click 0xC0; sleep 0.05; done) &
    echo $! > "$PIDFILE"
fi
