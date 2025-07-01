#!/bin/bash

# guessinggame.sh

# Count all regular files in current directory (including hidden ones)
file_count=$(find . -maxdepth 1 -type f | wc -l)

echo "Welcome to the Guessing Game!"
echo "How many regular files (including hidden ones) are in the current directory?"

while true; do
    read -p "Enter your guess: " guess

    # Check if input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "❌ Please enter a valid number."
        continue
    fi

    if (( guess < file_count )); then
        echo "📉 Too low! Try again."
    elif (( guess > file_count )); then
        echo "📈 Too high! Try again."
    else
        echo "🎉 Congratulations! You guessed correctly: $file_count files."
        break
    fi
done
