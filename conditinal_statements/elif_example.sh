#!/bin/bash
#
echo "Enter Your Marks : "
read marks 

if [ $marks -ge 90 ]; then 
	echo "Grade : A You got $marks"
elif [ $marks -ge 75 ]; then 
	echo "Grade: B You Got an $marks"
elif [ $marks -ge 50 ]; then
        echo "Grade: C You Got an $marks"
else 
	echo "Grade: F Sorry to hear But You Failed"
fi

