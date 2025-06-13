#!/bin/bash

# Script to remove emojis from markdown files
# This uses a regex pattern to match emoji characters and remove them

process_file() {
    local file="$1"
    echo "Processing file: $file"
    
    # Create a temporary file
    temp_file=$(mktemp)
    
    # Use perl to remove emoji characters
    # This regex pattern matches most emoji characters
    perl -C -pe 's/[\x{1F600}-\x{1F64F}\x{1F300}-\x{1F5FF}\x{1F680}-\x{1F6FF}\x{1F700}-\x{1F77F}\x{1F780}-\x{1F7FF}\x{1F800}-\x{1F8FF}\x{1F900}-\x{1F9FF}\x{1FA00}-\x{1FA6F}\x{1FA70}-\x{1FAFF}\x{2600}-\x{26FF}\x{2700}-\x{27BF}]//g' "$file" > "$temp_file"
    
    # Replace the original file with the modified content
    mv "$temp_file" "$file"
}

# Find all markdown files in the content directory and process them
find "/mnt/d/FCJ HỌC TẬP AWS/genai_workshop-main/content" -name "*.md" | while read -r file; do
    process_file "$file"
done

echo "All emoji characters have been removed from markdown files in the content directory."
