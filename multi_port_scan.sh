#!/bin/bash

read -p "Enter the target ip/domain: " target;

declare -A  ports=(
	[21]="FTP"
	[22]="SSH"
	[23]="Telnet"
	[52]="DNS"
	[80]="HTTP"
	[443]="HTTPS"
)
 for port in "${!ports[@]}";do
	echo -n "Checking ${ports[$port]} (port $port)..."

	if nc -z -v -w 2 "$target" "$port" 2>/dev/null;then
		echo "OPEN"
	else
		echo "CLOSED"
	fi
done
