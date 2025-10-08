#!/bin/bash 
#
for i in {1..10}; do
        echo "Iteration :$i"
        if [ $i -eq 5 ]; then
                echo "Continue  At : $i"
		sleep 3
                continue
        fi
done

echo "Loop continue  at $i"
~                        
