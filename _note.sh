#!/bin/bash

# Add next line to ~/.bashrc
# alias n=~/Documents/Notes/_note.sh

DIR=~/Documents/Notes/
TIMESTAMP=`date '+%Y%m%d_%H%M'`
NAME="$@"
NAME="${NAME// /_}"
NAME="${TIMESTAMP}_${NAME}.md"

echo "Opening... ${DIR}${NAME}"
mkdir -p "${DIR}"
touch "${DIR}${NAME}"
code --profile "Notes" "${DIR}" "${DIR}${NAME}"
