#!/bin/bash

# Add next 2 lines to ~/.bashrc
# export NOTES_DIR="~/Documents/Notes"
# alias p="${NOTES_DIR}/_pw.sh"

# Generate a 12-character "easy to say/read" password
# Uses characters that are visually distinct and phonetically clear

# Character sets (avoiding ambiguous characters)
LOWER="abcdefghjkmnpqrstuvwxyz"    # removed i, l, o
UPPER="ABCDEFGHJKMNPQRSTUVWXYZ"    # removed I, L, O
NUMBERS="23456789"                 # removed 0, 1

# Combine all characters
ALL_CHARS="${LOWER}${UPPER}${NUMBERS}"

# Generate 12-character password
PASSWORD=""
for i in {1..12}; do
    # Get random character from the set
    RANDOM_INDEX=$((RANDOM % ${#ALL_CHARS}))
    PASSWORD="${PASSWORD}${ALL_CHARS:$RANDOM_INDEX:1}"
done

echo "Generated password: $PASSWORD"

# Optional: Show character breakdown
#echo "Character set used:"
#echo "  Lowercase: $LOWER"
#echo "  Uppercase: $UPPER" 
#echo "  Numbers: $NUMBERS"
#echo "  (Excludes: 0, 1, I, L, O, i, l, o for clarity)"
