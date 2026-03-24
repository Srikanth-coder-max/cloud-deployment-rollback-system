#!/bin/bash

# Wrapper for CodeDeploy ApplicationStop hook
pkill -f "python3 -m http.server" || true

echo "Application stopped."
