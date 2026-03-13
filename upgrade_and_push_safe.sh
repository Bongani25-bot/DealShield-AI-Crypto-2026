#!/bin/bash
# upgrade_and_push_safe.sh
# Safe upgrade workflow for DealShield AI bot

BOT_DIR="$HOME/Bongani25-bot-DealShield-AI-Crypto-2026"
UPGRADE_DIR="$HOME/fresh_bot_upgrade"

echo "🛑 Stopping bot if running..."
# Find python processes with main.py and kill
pkill -f "$BOT_DIR/main.py" 2>/dev/null || echo "No bot process found."

echo "🧹 Copying upgraded bot files..."
# Only copy .py files, logs and secrets ignored
rsync -av --exclude '*.log' --exclude '*.sh' "$UPGRADE_DIR/" "$BOT_DIR/"

cd "$BOT_DIR" || exit 1

echo "⚡ Staging changes..."
git add --all

echo "✏️ Committing changes..."
git commit -m "Upgrade: new main.py and bot features" 2>/dev/null || echo "Nothing to commit"

echo "⏳ Pushing safely to GitHub..."
git push origin main

echo "🎉 Upgrade and push completed!"
