function moveCursor([array] $pos)
{
    $Host.UI.RawUI.CursorPosition = `
 New-Object System.Management.Automation.Host.Coordinates $pos[0], $pos[1]
    #$Host.UI.Write('Cursor:BinHier=>')
}

while(1){
    clear
    moveCursor((2,3))
    Write-Host "Datum: " $(Get-Date -Format  "MM/dd/yyyy")
    moveCursor((2,4))
    Write-Host "Uhrzeit" $(Get-Date -Format "HH:mm:ss")

    Start-Sleep -Seconds 1
}


