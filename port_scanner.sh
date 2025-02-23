#!/bin/bash

read -p "Enter the target IP or domain: " target
read -p "Enter the port number: " port

# Debugging: Display values before running Netcat
echo "Checking target: $target on port: $port"

# Use Netcat to check the port
if nc -z -v -w 2 "$target" "$port" 2>/dev/null; then
    echo "✅ Port $port on $target is OPEN."
else
    echo "❌ Port $port on $target is CLOSED."
fi

