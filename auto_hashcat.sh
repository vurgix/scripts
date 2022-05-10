#!/bin/bash
#con wak sacar los numeros de hashcat
NUMS=(`cat nums`)

CONT=${#NUMS[@]}

for (( i=0 ; i<$CONT ; i=i+1 )); do
	hashcat -m ${NUMS[i]} -a 0 -o pass.hash hash rockyou.txt
done

exit
