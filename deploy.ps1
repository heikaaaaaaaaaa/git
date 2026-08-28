$ErrorActionPreference = "Continue"
$user = "heikaaaaaaaaaa"
$repo = "git"

Set-Location $PSScriptRoot

# 确保在 main 分支，并指向正确的远程仓库
git branch -M main
git remote set-url origin "https://github.com/$user/$repo.git"

# 本地已是最新作品集，直接推送到远程 main
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
