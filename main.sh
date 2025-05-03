#!/bin/bash

#Script generate random 4-digit number for user to guess
RANDOM_NUMBER=$(awk 'BEGIN {srand(); print int(1000 + rand()*9000)}')
echo $RANDOM_NUMBER

#Take the user's first input
COUNT=1
echo "Make your first guess: "
read NUMBER_GUESSED

#If the guess is incorrect, enter the guessing loop, where with each guess, guesses count increases
while [[ "$NUMBER_GUESSED" != "$RANDOM_NUMBER" ]]; do
	echo "Your guess was incorrect. Try Again!"
	COUNT=$((COUNT + 1))
	read NUMBER_GUESSED
	#check the number again
done

#When the number is guessed, print out the score
echo "Congratulations! You guessed the correct number at $COUNT guesses"
