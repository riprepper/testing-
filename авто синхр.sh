#!/bin/bash
git pull origin main --rebase
git add .
git commit -m "Auto-sync $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main