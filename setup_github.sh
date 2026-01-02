#!/bin/bash
# ==============================================================================
# GitHub Setup Script
# ==============================================================================
# This script automates the git commands to push your repository to GitHub
# 
# BEFORE RUNNING:
# 1. Complete CUSTOMIZE_CHECKLIST.md
# 2. Create empty repository on GitHub: karmanAiCr/openalex-ai-consumer-research
# 3. Make this script executable: chmod +x setup_github.sh
# ==============================================================================

echo "=========================================="
echo "GitHub Repository Setup Script"
echo "=========================================="
echo ""

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Error: This is not a git repository yet."
    echo "   Creating new git repository..."
    git init
    echo "✅ Git repository initialized"
    echo ""
fi

# Set the remote URL
REPO_URL="https://github.com/karmanAiCr/openalex-ai-consumer-research.git"
echo "📡 Setting remote URL..."
git remote remove origin 2>/dev/null  # Remove if exists
git remote add origin $REPO_URL
echo "✅ Remote set to: $REPO_URL"
echo ""

# Check current branch name
CURRENT_BRANCH=$(git branch --show-current 2>/dev/null)
if [ -z "$CURRENT_BRANCH" ]; then
    CURRENT_BRANCH="main"
    echo "🌿 Creating branch: $CURRENT_BRANCH"
    git branch -M $CURRENT_BRANCH
fi

# Show status
echo "📋 Current status:"
git status --short
echo ""

# Ask for confirmation
read -p "❓ Have you completed CUSTOMIZE_CHECKLIST.md? (y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "⚠️  Please complete customization first!"
    echo "   See: CUSTOMIZE_CHECKLIST.md"
    exit 1
fi

# Add all files
echo "➕ Adding all files..."
git add .
echo "✅ Files added"
echo ""

# Show what will be committed
echo "📦 Files to be committed:"
git diff --cached --name-status
echo ""

# Ask for commit message
read -p "💬 Commit message (or press Enter for default): " COMMIT_MSG
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Initial commit: OpenAlex AI consumer research corpus extraction code"
fi

# Commit
echo "💾 Committing changes..."
git commit -m "$COMMIT_MSG"
echo "✅ Changes committed"
echo ""

# Push to GitHub
echo "🚀 Pushing to GitHub..."
echo "   Branch: $CURRENT_BRANCH"
echo "   Remote: $REPO_URL"
echo ""

git push -u origin $CURRENT_BRANCH

# Check if push was successful
if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ SUCCESS! Repository pushed to GitHub"
    echo "=========================================="
    echo ""
    echo "🔗 View your repository:"
    echo "   https://github.com/karmanAiCr/openalex-ai-consumer-research"
    echo ""
    echo "📋 Next steps:"
    echo "   1. Add topics (see COMPLETE_SETUP_GUIDE.md Part 7)"
    echo "   2. Create release v1.0.0 (see Part 8)"
    echo "   3. Get Zenodo DOI (see Part 9)"
    echo "   4. Update README with DOI badge"
    echo ""
else
    echo ""
    echo "=========================================="
    echo "❌ Push failed"
    echo "=========================================="
    echo ""
    echo "Common issues:"
    echo "1. Authentication: You may need a Personal Access Token"
    echo "   Generate at: https://github.com/settings/tokens"
    echo "   When prompted for password, use the token"
    echo ""
    echo "2. Repository not created: Create it first at"
    echo "   https://github.com/new"
    echo "   Name: openalex-ai-consumer-research"
    echo ""
    echo "3. Try again with:"
    echo "   git push -u origin $CURRENT_BRANCH"
    echo ""
fi

# ==============================================================================
# END OF SCRIPT
# ==============================================================================
