# MRS Stream Deck Profile

This package contains **ONLY** what's needed to use the Stream Deck profile.

## Contents

- `MRS-XL.streamDeckProfile` - Stream Deck XL profile (4x8, 32 keys)
- `DiscordStatus/buttons/` - 10 batch files the profile uses
- `DiscordStatus/scripts/` - 10 PowerShell scripts (called by the batch files)

## What the Scripts Do

The Discord status scripts generate formatted Discord messages with custom emojis and timestamps, then paste them into your active Discord chat.

**Status Types:**
- **aa.bat** - Active Alert status (on a call)
- **rtb.bat** - Returning To Base status
- **sb-1.bat to sb-8.bat** - Standby queue positions 1-8

## Installation

### Quick Setup (Recommended)

1. Extract this package to `C:\StreamDeck\`
2. Double-click `MRS-XL.streamDeckProfile` to import
3. Done! The buttons will work automatically.

### Custom Location Setup

If you extract elsewhere (e.g., `D:\MyFiles\StreamDeck\`):

1. Extract the package to your chosen location
2. Double-click `MRS-XL.streamDeckProfile` to import
3. In Stream Deck software, update button paths:
   - Right-click each queue/status button → Edit
   - Update path from `C:\StreamDeck\...` to your location
   - Repeat for all 10 status buttons (Queue 1-8, Alert, RTB)

## Usage

1. Open Discord and click in a text channel
2. Press the Stream Deck button (e.g., Queue Position 1)
3. The status message is automatically pasted

Example output: `🅿️1️⃣ STANDBY <t:1733342123:R>` (shows "X minutes ago")

## Requirements

- Stream Deck XL (4x8 layout)
- Stream Deck software (latest version)
- Windows with PowerShell
- No additional configuration needed!

## Notes

- Scripts are **self-contained** - no webhooks, databases, or config files needed
- Status messages use Discord's custom emoji format
- Timestamps update automatically based on when you press the button
- Messages paste directly into your active Discord window

## Profile Layout

**10 Pages** with text macros, queue positions, and status buttons.
See the profile in Stream Deck software for full layout.

## Credit
- Team lead copy-pastas by Poptic
- Stream Deck MK.2 layout by [Lübbi](https://github.com/luebbi5000)
- Source animated icons created by [Freepik](https://www.flaticon.com/authors/freepik)
  - Modified and adjusted to "Medrunner style" buttons by LowkeyToq
