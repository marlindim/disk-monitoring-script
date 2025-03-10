#!/bin/bash


LIMIT=80


USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//')

LOG_FILE="disk_usage.log"


if [ "$USAGE" -gt "$LIMIT" ]; then
    echo "Disk usage is at ${USAGE}% which is above the limit of ${LIMIT}%" | tee -a "$LOG_FILE"
else
    echo "Disk usage is at ${USAGE}%. Everything is fine." | tee -a "$LOG_FILE"
fi
