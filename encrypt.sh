#!/bin/bash

# 1. Check if an argument was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <path_to_file>"
    exit 1
fi

FILE_PATH=$1

# 2. Check if the file exists
if [ ! -f "$FILE_PATH" ]; then
    echo "Error: File '$FILE_PATH' not found."
    exit 1
fi

# 3. Perform Caesar Cipher (ROT13) and output to terminal
echo "--- Ciphered Content ---"
tr 'A-Za-z' 'N-ZA-Mn-za-m' < "$FILE_PATH"
echo -e "\n------------------------"

# 4. Create the hidden file .hello.txt in the current directory
echo "Hello World!" > .hello.txt