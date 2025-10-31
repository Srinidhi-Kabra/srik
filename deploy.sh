#!/bin/bash

set -e

echo "🚀 Building site with Hugo..."
hugo

echo "📦 Committing changes to main branch..."
git add .
git commit -m "Update content"
git push origin main

echo "🌐 Deploying to gh-pages..."
cd public
git add .
git commit -m "Deploy update"
git push -f origin gh-pages
cd ..

echo "✅ Site updated: https://srinidhi-kabra.github.io"
