#!/usr/bin/env bash
# ============================================================
#  GitHub Upload Script for LDP Research Project
#  Run this from inside the ldp-research/ directory
# ============================================================

echo ""
echo "====================================================="
echo "  LDP Research — GitHub Repository Setup"
echo "====================================================="

# Step 1: Initialize git
git init
git add .
git commit -m "Initial commit: LDP research project — mechanisms, benchmarks, and paper"

echo ""
echo "✅ Local git repository initialized."
echo ""
echo "---------------------------------------------------"
echo "  Next: Create a repo on GitHub, then run:"
echo "---------------------------------------------------"
echo ""
echo "  git remote add origin https://github.com/YOUR_USERNAME/ldp-research.git"
echo "  git branch -M main"
echo "  git push -u origin main"
echo ""
echo "Replace YOUR_USERNAME with your GitHub username."
echo "====================================================="
