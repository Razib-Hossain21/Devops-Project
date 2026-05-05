#!/bin/bash

# This script is use for test advanced_ping
# Ping a host silently, color-coded message, and log output

HOST="8.8.8.8"
LOGFILE="$HOME/ping_log.txt"

# Create/clear logfile
> "$LOGFILE"

# Ping host silently, save output to logfile
ping -c 10 $HOST &> "$LOGFILE"

# Check exit status
if [ $? -eq 0 ]; then
    # Green color for success
    echo -e "\e[32mHost $HOST is reachable ✅"
else
    # Red color for failure
    echo -e "\e[31mHost $HOST is down ❌\e[0m"
fi

# Optional: show last 5 lines of ping log
echo
echo "=== Last ping log entries ==="
tail -n 5 "$LOGFILE"
