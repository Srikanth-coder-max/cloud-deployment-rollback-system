#!/bin/bash

PID=$(pgrep -f app.py)

if [ -n "$PID" ]; then
  kill -9 $PID
fi
