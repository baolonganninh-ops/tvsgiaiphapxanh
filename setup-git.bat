@echo off
cd /d C:\Users\ADMIN\.openclaw\workspace\skills\tvsgiaiphapxanh

echo [1/5] Setting git config...
git config user.email "tvsgiaiphapxanh@openclaw.local"
git config user.name "TVS SEO Bot"

echo [2/5] Initializing repo...
git init 2>nul

echo [3/5] Adding files...
git add .

echo [4/5] Committing...
git commit -m "feat: upgrade skill v2.0.0 + SEO outlines + cron 21h/08h"

echo [5/5] Done!
git log --oneline -3
