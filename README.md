# notes
Notes in Markdown

### How to use
1. Create a new repo from this template
   - Click green "Use this template..." button in upper right
   - Select "Create a new repository"
   - Complete form and submit
2. Clone that repo to the location that matches `$DIR` in the `_note.sh` script
   - `mkdir -p ~/Documents`
   - `git clone REPO_URL_FROM_STEP_1 temp`
   - `mv temp ~/Documents/Notes`
3. Add a `NOTES_DIR` environment variable and an alias that points to `_note.sh` to your `.bashrc` (suggestion: `n`)
   - `echo 'export NOTES_DIR="~/Documents/Notes"' >> ~/.bashrc`
   - `echo 'alias n="${NOTES_DIR}/_note.sh"' >> ~/.bashrc`
4. Create note with `[alias] description`
   - `n standup`

### Requirements
- VSCode on PATH as `code` (default configuration)
