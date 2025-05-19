#!/bin/bash

# Navigate to your repo (optional; set this if not running from the repo root)
# cd /path/to/your/repo

rm -r docs
cp -r ../workshop.leiden.2025/_site docs

# Get current timestamp in ISO 8601 format
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Stage all changes
git add .

# Commit with timestamp
git commit -m "Update on $timestamp"

# Push to current branch (assumes it's already set to track origin)
git push

