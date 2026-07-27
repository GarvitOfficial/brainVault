#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

BRANCH="${1:-main}"
COMMIT_MESSAGE="${2:-chore: rebuild Quartz site}"

if [[ ! -d .git ]]; then
  echo "Error: this script must be run from the repository root."
  exit 1
fi

echo "[1/6] Installing dependencies..."
npm ci

echo "[2/6] Syncing remote refs..."
git fetch origin "$BRANCH" >/dev/null 2>&1 || true

echo "[3/6] Installing Quartz plugins from config..."
npx quartz plugin install --from-config

echo "[4/6] Building Quartz site..."
npx quartz build

echo "[5/6] Publishing changes to Git..."
git add -A

if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "$COMMIT_MESSAGE"
fi

echo "[6/6] Pushing local branch to GitHub..."
git push --force-with-lease origin "$BRANCH"

echo "Done. Your local branch was pushed to origin/$BRANCH and will overwrite the remote branch."
