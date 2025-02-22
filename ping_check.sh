#!/bin/bash

read -p "Enter ip or domain: " target

if ping -c 4 "$target" > /dev/null 2>&1;then
	echo "$target is reachable."
else
	echo "$target is not reachable!"
fi
