Expand-Archiv -Path "" -DestinationPath "C:\Temp"
Set-Location C:\temp
Get-ChildItem -r -Filter "*.jpg" | Where-Object {$_.Length/1KB -gt 5} | Select-Object Name,Extension,Length | Sort-Object Length  | Format-Table
$files = Get-ChildItem -r -Filter "*.txt" 