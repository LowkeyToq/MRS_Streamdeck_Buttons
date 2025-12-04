# Active Alert Status - No Position
# Generates Discord timestamp and pastes directly

# Get current Unix timestamp (UTC-based)
$unixTime = [int]((Get-Date).ToUniversalTime() - (Get-Date "1970-01-01 00:00:00")).TotalSeconds

# Generate Discord status without position number
$status = '<a:AlertBlue:1064652389711360043><a:AlertRed:985293780288700476><:AA1:1182246601557823520><:AA2:1182246604401561610><:AA3:1182246605718556682><:AA4:1182246607228514304><:AA5:1182246610189692938><:AA6:1182246613150859304><:AA7:1182246614665019393><:AA8:1182246617559072838><a:AlertRed:985293780288700476><a:AlertBlue:1064652389711360043><t:' + $unixTime + ':R>'

# Copy to clipboard with explicit Unicode encoding and simulate Ctrl+V for instant paste
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Clipboard]::SetText($status, [System.Windows.Forms.TextDataFormat]::UnicodeText)
Start-Sleep -Milliseconds 100
[System.Windows.Forms.SendKeys]::SendWait("^v")

# Exit
exit 0