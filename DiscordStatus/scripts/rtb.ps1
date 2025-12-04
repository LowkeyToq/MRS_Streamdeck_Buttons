# RTB Status - No Position
# Generates Discord timestamp and pastes directly

# Get current Unix timestamp (UTC-based)
$unixTime = [int]((Get-Date).ToUniversalTime() - (Get-Date "1970-01-01 00:00:00")).TotalSeconds

# Generate Discord status without position number
$status = '<:RTB1:1182246669564256296><:RTB2:1182246670717689867><:RTB3:1182246674383507476><:RTB4:1182246677101412392><:RTB5:1182246678397464596><:RTB6:1182246679680929803><:RTB7:1182246686177894430><:RTB8:1182246689336213575><t:' + $unixTime + ':R>'

# Copy to clipboard with explicit Unicode encoding and simulate Ctrl+V for instant paste
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Clipboard]::SetText($status, [System.Windows.Forms.TextDataFormat]::UnicodeText)
Start-Sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("^v")

# Exit
exit 0
