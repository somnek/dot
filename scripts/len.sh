#!/bin/bash

# Function to print text in color
print_color() {
    local text=$1
    echo -e "${text}"
}

# Check if an argument is provided
if [ $# -eq 0 ]; then
    print_color 31 "Error: No argument provided. Please pass a string as an argument."
    exit 1
fi

# Get the length of the provided argument
length=${#1}

# Print the length with colored output
print_color "Length of the string: $length"

