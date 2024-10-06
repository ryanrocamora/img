#!/bin/bash

# Stage all changes
git add .

# Use a default commit message with a timestamp
commit_message="Automated commit at $(date +'%Y-%m-%d %H:%M:%S')"

# Commit the changes with the default message
git commit -m "$commit_message"

# Get the current branch
BRANCH=$(git symbolic-ref --short HEAD)

# Pull the latest changes and rebase
git pull --rebase origin "$BRANCH"

# Push the changes to the remote repository
git push origin "$BRANCH"
