#!/bin/bash

# Wrapper for CodeDeploy ApplicationStart hook
cd /home/ec2-user/app
nohup python3 -m http.server 8080 > server.log 2>&1 &

echo "Application started on port 8080."
