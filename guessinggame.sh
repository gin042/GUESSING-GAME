#!/bin/bash

# Function to get the number of files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Main program
echo "Welcome to the Guessing Game!"
num_files=$(file_count)

while true; do
    echo "How many files are in the current directory?"
    read guess

    if [[ $guess -eq $num_files ]]; then
        echo "Congratulations! You guessed it right!"
        break
    elif [[ $guess -lt $num_files ]]; then
        echo "Your guess is too low. Try again."
    else
        echo "Your guess is too high. Try again."
    fi
done
