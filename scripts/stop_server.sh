#!/bin/bash

echo "Stopping existing application..."

pkill -f "python3 -m http.server" || true

echo "Old application stopped."
