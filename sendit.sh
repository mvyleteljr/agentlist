#!/bin/bash

# Check if a link was provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a link"
    echo "Usage: sendit <link>"
    exit 1
fi

# Store the link from command line argument
link="$1"

# Check if README.md exists
if [ ! -f README.md ]; then
    echo "Creating new README.md file..."
    touch README.md
fi

# Add the link as a bullet point to README.md
echo "- $link" >> README.md

# Git operations
git add README.md
git commit -m "Added new link: $link"
git push

echo "Successfully added link to README.md and pushed to GitHub"
