journal() {
    # Set the journal directory
    JOURNAL_DIR="$HOME/private/journal"
    
    # Create directory if it doesn't exist
    mkdir -p "$JOURNAL_DIR"
    
    # Create the filename in YYYY_MM_DD format
    filename="$JOURNAL_DIR/$(date +%Y_%m_%d).md"
    
    # Create the formatted title (same as filename without .md)
    title="$(date +%Y_%m_%d)"
    
    # Create the file with the title if it doesn't exist
    if [ ! -f "$filename" ]; then
        echo "# $title" > "$filename"
    fi
    
    # Change to journal directory and open in Neovim
    cd "$JOURNAL_DIR"
    nvim "$filename"
}
