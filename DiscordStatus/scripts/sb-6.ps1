# Standby Status - Position 6 (6th in line)
# Generates Discord timestamp and pastes directly

# Get current Unix timestamp (UTC-based)
$unixTime = [int]((Get-Date).ToUniversalTime() - (Get-Date "1970-01-01 00:00:00")).TotalSeconds

# Generate Discord status with position number and timestamp (using single quotes to prevent escaping)
$status = '<:P6:1432823545746161734><:SB1:1182246721129025657><:SB2:1182246723981164665><:SB3:1182246726137036891><:SB4:1182246729844797440><:SB5:1182246731447021589><:SB6:1182246733946818620><:SB7:1182246735616155648><t:' + $unixTime + ':R>'

# Copy to clipboard with explicit Unicode encoding and simulate Ctrl+V for instant paste
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Clipboard]::SetText($status, [System.Windows.Forms.TextDataFormat]::UnicodeText)
Start-Sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("^v")

# Exit
exit 0