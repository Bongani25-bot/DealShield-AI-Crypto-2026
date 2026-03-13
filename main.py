# main.py - fresh bot entry point

def main():
    print("🤖 Bot is starting...")
    # Add your bot initialization and command handling here

if __name__ == "__main__":
    main()
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
main.py
DealShield AI Bot - Version 2.0
"""

import time
from bot_setup import setup_environment
from bot_tasks import run_tasks

BOT_NAME = "DealShield AI"
VERSION = "v2.0"
AUTHOR = "Bongani25-bot"

def start_bot():
    print(f"🤖 {BOT_NAME} {VERSION} is starting...")
    
    # Setup environment first
    setup_environment()
    
    # Run main bot tasks
    run_tasks()

def main():
    start_bot()

if __name__ == "__main__":
    main()
