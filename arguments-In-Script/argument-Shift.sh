#!/bin/bash
#

echo "All Arguments Intinally: $@"

while [ $# -gt 0 ]; do
	
	echo "Currunt Argument: $1"
	sleep 2
	shift
done

echo "All Arguments processed!"
