#!/bin/bash

# Generate a random number between 1 and 100
target=$((RANDOM % 100 + 1))

echo "Welcome to the Number Guessing Game!"
echo "I have chosen a number between 1 and 100. Can you guess it?"

# Initialize variables
guess=0
attempts=0

# Loop until the user guesses the correct number
while [[ $guess -ne $target ]]; do
    read -p "Enter your guess: " guess
    attempts=$((attempts + 1))

    if [[ $guess -lt $target ]]; then
        echo "Too low! Try again."
    elif [[ $guess -gt $target ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed the number $target in $attempts attempts."
    fi
done
