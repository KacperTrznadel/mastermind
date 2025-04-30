#!/bin/bash

#Script generate random 4-digit number for user to guess
RANDOM_NUMBER=$(awk 'BEGIN {srand(); print int(1000 + rand()*9000)}')
echo $RANDOM_NUMBER

#Take the user's first input
COUNT=1
echo "Make your first guess: "
read NUMBER_GUESSED