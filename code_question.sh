#!/bin/bash
long_string='I have a very long string that needs to be chopped'

split_jammer(){
	local clean_text subString
	text="$1"
	max_len=$2
	curPos=0
	
	# remove all words larger than $max_len from $text and store it in $clean_text
	for w in $text;do
		[[ ${#w} -le $max_len ]] && clean_text+="$w "
	done

	# loop through the string while curPos -le the Length of clean_text
	while [ $curPos -le "${#clean_text}" ];do
		# substring set from curPos to max_len
		subString=${clean_text:$curPos:$max_len}
		# get the very next character for checking if it's a space
		nextChar=${clean_text:$curPos+max_len:1}

		# IF, nextChar != \s, shorten the substring to everything before the last space.
		[[ ! $nextChar == " " ]] && subString=${subString% *}

		# Move the cursor according to the length of the substring.
		((curPos=curPos+${#subString}+1))
		echo "$subString"
	done
}

split_jammer "$long_string" 10
# split_jammer 'Only splits on whitespace' 6
# split_jammer 'Does not exceed `max_len`' 5
# split_jammer 'Each substring in the returned list is the longest possible combination (when working in an L-R language like English).' 13
# split_jammer 'You may discard words that are longer than max_len and thus cannot be split due to rule number 1.' 4
# split_jammer 'test this is a test' 4