#!/bin/bash

# guessinggame.sh

# Count the number of regular files in the current directory
file_count=$(ls -l | grep -c ^-)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many regular files are in the current directory?"

while true; do
    read -p "Enter your guess: " guess

    # Validate input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [[ "$guess" -lt "$file_count" ]]; then
        echo "Too low! Try again."
    elif [[ "$guess" -gt "$file_count" ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed it right!"
        break
    fi
done
