#!/bin/bash

# Add next 2 lines to ~/.bashrc
# export NOTES_DIR="~/Documents/Notes"
# alias n="${NOTES_DIR}/_note.sh"

DIR="${NOTES_DIR}"
TIMESTAMP=`date '+%Y%m%d_%H%M'`
NAME="$@"
NAME="${NAME// /_}"
NAME="${TIMESTAMP}_${NAME}.md"

echo "Opening... ${DIR}${NAME}"
mkdir -p "${DIR}"
touch "${DIR}${NAME}"
code --profile "Notes" "${DIR}" "${DIR}${NAME}"
