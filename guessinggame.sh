#!usr/bin/bash

# This is a guessing game
# Written by @hcxxstl

function main(){
        if [[ $guess -gt $num ]]
        then
                echo "$guess is too high "
        else
                echo "$guess is too low"
        fi
        echo "Please enter your guess:"
        read guess
}

echo "======= GAME START ======="
echo "Guess the number of files"
echo "in the current directory."

num=$(ls|wc -l)
guess=-1

echo "Please enter your guess:"
read guess

while [[ $guess -ne $num ]]
do
	main
done

echo "Congratulations!"
echo "Your answer is correct!"
echo "=======  GAME END  ======="
