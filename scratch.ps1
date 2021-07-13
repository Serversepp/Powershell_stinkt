
Select-String -Path "C:\Users\Admin\IdeaProjects\Powershell stinkt\adressliste.txt" -Pattern "Terrorist" | Select-Object LineNumber,line

Set-Location C:\temp
Get-ChildItem -r -Filter "*.jpg" | Where-Object {$_.Length/1KB -gt 350} | Select-Object Name,Extension,Length | Sort-Object Length | Format-Table

Write-Host $(Get-Date).AddDays(1) $(Get-Date ).AddDays(1)

$date1 = Get-Date -Date "01/01/1970"
$date2 = Get-Date
(New-TimeSpan -Start $date1 -End $date2).TotalSeconds

(New-TimeSpan -Start (Get-Date "01/01/1970") -End (Get-Date)).TotalSeconds



cls
$path ="C:\daten\U-Vorlesungen\BS2018\pruefung\2020\powershell"
Set-Location $path
$gedicht=Get-Content -Path "gedicht_alles.txt"
$i=0
Set-Content -Path "gedicht_even.txt" -Value ""
Set-Content -Path "gedicht_odd.txt" -Value ""
foreach ($line in $gedicht) {
    if($i%2 -eq 0){
        Add-Content -Value $line -Path "gedicht_even.txt"
    }
    else {
        Add-Content -Value $line -Path "gedicht_odd.txt"
    }
    $i++
}


cls
$path ="C:\daten\U-Vorlesungen\BS2018\pruefung\2020\powershell"
Set-Location $path
$gedicht_alles_neu=Set-Content -Path "gedicht_alles_neu.txt" -Value ""
$gedicht_even=Get-Content -Path "gedicht_even.txt"
$gedicht_odd=Get-Content -Path "gedicht_odd.txt"
$nl_even= $gedicht_even.count
$nl_odd= $gedicht_odd.count
if ($nl_even -ge $nl_odd) {$nl=$nl_even}
else {$nl=$nl_even}
$weiter=1
$i=0
for ($i=0; $i -lt$nl; $i++) {
    if($gedicht_even[$i] -ne $null){
        Add-Content -Value $gedicht_even[$i] -Path "gedicht_alles_neu.txt"
    }
    if($gedicht_odd[$i] -ne $null){
        Add-Content -Value $gedicht_odd[$i] -Path "gedicht_alles_neu.txt"

    }
}
$alt=get-content -Path "gedicht_alles.txt" -Encoding UTF8
Write-Output $alt











function moveCursor([array] $pos)
{
    $Host.UI.RawUI.CursorPosition = `
 New-Object System.Management.Automation.Host.Coordinates $pos[0], $pos[1]
    #$Host.UI.Write('Cursor:BinHier=>')
}
# Test von moveCursor
#cls
#moveCursor 20 5
#Write-Host "Hinter dem Cursor"
$(Get-Date)
