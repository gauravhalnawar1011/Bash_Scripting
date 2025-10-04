#!/bin/bash

echo "Enter  a Day (mon/tue/wed): "
read day

case $day in
	mon) echo "Today is Monday:";;
	tue) echo "Today is Tuesday:";;
	wed) echo "Today is wednsday:";;
	*) echo "Invalid Input" ;;
esac


