#!usr/bin/bash
# This is a guessing game
# Written by @hcxxstl

function main(){
while true
do
	echo "Please enter your guess:"
	read guess
	if [[ $guess =~ [^0-9] ]]
	then
		echo "$guess is not an Int"
	elif [[ $guess -eq $num ]]
	then
		echo "Congratulations!"
		echo "Your answer is correct!"
		break
	elif [[ $guess -gt $num ]]
	then
		echo "$guess is too high "
        else
       	        echo "$guess is too low"
	fi
done
}

echo "======= GAME START ======="
echo "Guess the number of files"
echo "in the current directory."

# Count all files include hidden files and files in subfolders
# num=$(find . -type f | wc -l)
# Count regular files
num=$(ls -l|grep "^-"|wc -l)
guess=-1
main

echo "=======  GAME END  ======="
