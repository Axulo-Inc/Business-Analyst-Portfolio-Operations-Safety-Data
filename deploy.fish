#!/usr/bin/fish

echo "========================================="
echo "🚀 BA Portfolio - GitHub Deployment"
echo "========================================="
echo ""

# Check if we're connected to GitHub
if git remote -v | grep -q origin
    echo "✅ Already connected to GitHub"
    echo "Remote: "(git remote -v | head -1)
    echo ""
    echo "To update: git push"
else
    echo "📡 Not yet connected to GitHub"
    echo ""
    echo "📝 DEPLOYMENT INSTRUCTIONS:"
    echo ""
    echo "1. First, create repository on GitHub:"
    echo "   URL: https://github.com/Axulo-Inc/BA-Portfolio"
    echo "   ⚠️  DO NOT initialize with README, .gitignore, or license"
    echo ""
    echo "2. Then run these 3 commands:"
    echo ""
    echo "   git remote add origin https://github.com/Axulo-Inc/BA-Portfolio.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
    echo ""
    echo "3. Your portfolio will be live at:"
    echo "   https://github.com/Axulo-Inc/BA-Portfolio"
end

echo ""
echo "📁 Current portfolio structure:"
echo "Files: "(count (find . -type f))
echo "Case studies: 3 complete"
echo "Last commit: "(git log --oneline -1)
