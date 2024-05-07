#!/bin/bash
# Script to sync a forked Git repository with its upstream

# Change directory to the repository
cd "/c/Users/Logan/Documents/GitHub/AdGuard-Home-Allowlist"

# Add the remote upstream repository if it hasn't been added
# Replace 'https://github.com/original-owner/repository.git' with the URL of the original repository
git remote add upstream https://github.com/hl2guide/AdGuard-Home-Whitelist.git

# Fetch the branches and their respective commits from the upstream repository
git fetch upstream

# Check out your fork's local default branch (usually "master" or "main")
git checkout main

# Merge changes from upstream/default branch into your local default branch
git merge upstream/main

# Push the changes to your fork on GitHub (optional, requires proper permissions)
git push origin main
