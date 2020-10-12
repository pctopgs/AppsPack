Write-Host "Installing Chocolatey..."



Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


Write-Host "Is this a:"

Write-Host "1. Workstation"

Write-Host "2. Laptop"

Write-Host "3. Tablet"

Write-Host "4. Small Tablet"

Write-Host "5. Server"

write-host "6. Exit"


$choice = Read-Host -Prompt "Choice: "

if ($choice -eq 1) # Workstation

{
    write-host "Workstation"
    choco install seatools windirstat 7zip putty hwmonitor obs-studio sumatrapdf youtube-dl github-desktop wireshark microsoft-edge vscode vlc gimp notepadplusplus blender shotcut krita tor-browser thunderbird libreoffice-fresh visualstudio2019community -y

}

elseif($choice -eq 2) # Laptop

{
    write-host "Laptop"
    choco install seatools windirstat 7zip putty sumatrapdf github-desktop wireshark microsoft-edge vscode vlc gimp notepadplusplus shotcut krita tor-browser libreoffice-fresh visualstudio2019community -y

}

elseif($choice -eq 3) # Tablet

{
    write-host "Tablet"
    #choco install seatools windirstat 7zip putty wireshark vscode visualstudio2019community libreoffice-fresh vlc gimp notepadplusplus microsoft-edge-insider-dev nmap install sumatrapdf -y
    choco install seatools windirstat 7zip putty sumatrapdf youtube-dl github-desktop wireshark microsoft-edge-insider-dev vscode vlc notepadplusplus krita gimp libreoffice-fresh visualstudio2019community -y
}

elseif($choice -eq 4) # Small Tablet

{
    write-host "Small Tablet"
    #choco install seatools windirstat 7zip putty wireshark vscode libreoffice-fresh vlc gimp notepadplusplus microsoft-edge-insider-dev shotcut github-desktop -y
}

elseif($choice -eq 5) # Media Server

{
    write-host "Media Server"
    #choco install seatools windirstat 7zip putty wireshark jellyfin sonarr radarr deluge -y
}

elseif($choice -eq 0)
{
    write-host "\nGoodbye"
}

write-host "\nDone"