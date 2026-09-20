# Check current value, so that it won't be picked twice in a row
$check = Get-ItemPropertyValue -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Screensavers\ssText3d" -Name "DisplayString"

# Initialize array of choices from list, then chooses randomly
$list = Get-Content -Path "E:\Writing & Documents\MISC\FAVGAMES.txt" # <-------- Change this path to wherever YOUR text file is stored.
$choice = Get-Random $list

# If first choice matches current value, remove from pool and choose randomly again.
if($choice -eq $check)
{
    $list.Replace($choice, "")
    $choice = Get-Random $list
}

# Check number of characters, shortening excessively long entries and appending "--".
# Any strings longer than 20 characters will cause the text to default to something like "Windows 11"
if($choice.Length -gt 20)
{
    $choice = $choice.Substring(0, 18) + "--"
}

# Update registry key with the random choice
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Screensavers\ssText3d" -Name "DisplayString" -Value $choice
