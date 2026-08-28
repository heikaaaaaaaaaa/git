# One-click push to GitHub Pages
$ErrorActionPreference = "Stop"

$site = $PSScriptRoot
$user = "heikaaaaaaaaaa"
$repo = "git"

Set-Location $site

# Make sure we're on main
git branch -M main 2>$null

# Re-point remote (in case it was set differently)
git remote set-url origin "https://github.com/$user/$repo.git"

# Reset remote tracking to force our content on top of the empty repo
# (this replaces the placeholder README "# git" with the portfolio)
git fetch origin main 2>$null
git reset --soft origin/main 2>$null

git add .
git commit -m "Add online portfolio website" 2>$null

Write-Host "Pushing to https://github.com/$user/$repo.git ..."
git push -u origin main --force

Write-Host ""
Write-Host "Done! Your portfolio will be live at:"
Write-Host "  https://$user.github.io/$repo/"
Write-Host ""
Write-Host "If the page shows 404, go to the repo -> Settings -> Pages,"
Write-Host "set Source = 'Deploy from a branch', Branch = 'main', Folder = '/(root)', then Save."
