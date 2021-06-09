#!/bin/bash

for w in $1;do
	[[ ${#w} -le $2 ]] && string+="$w "
done

i=0
while [ $i -le "${#string}" ];do
	subString=${string:$i:$2}
	[[ ! ${string:$i+$2:1} == " " ]] && subString=${subString% *}
	((i=i+${#subString}+1))
	echo "$subString"
done