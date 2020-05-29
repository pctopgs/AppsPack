Write-Host "Installing Chocolatey..."

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install seatools windirstat 7zip putty wireshark vscode visualstudio2015community libreoffice-fresh vlc gimp notepadplusplus microsoft-edge-insider nmap -y


Write-Host "Is this a:"
Write-Host "1. Workstation"
Write-Host "2. Laptop"
Write-Host "3. Tablet"
Write-Host "4. Small Tablet"
Write-Host "5. Server"

$choice = Read-Host -Prompt "Choice: "

if ($choice -eq 1)
{
    choco install seatools windirstat 7zip putty wireshark vscode visualstudio2019community libreoffice-fresh vlc gimp notepadplusplus microsoft-edge shotcut github-desktop krita tor-browser -y
}
elseif($choice -eq 2)
{
    choco install seatools windirstat 7zip putty wireshark vscode visualstudio2019community libreoffice-fresh vlc gimp notepadplusplus microsoft-edge-insider shotcut github-desktop tor-browser -y
}
elseif($choice -eq 3) # Tablet
{
    choco install seatools windirstat 7zip putty wireshark vscode visualstudio2019community libreoffice-fresh vlc gimp notepadplusplus microsoft-edge-insider-dev nmap -y
}
elseif($choice -eq 4) # Small Tablet
{
    choco install seatools windirstat 7zip putty wireshark vscode libreoffice-fresh vlc gimp notepadplusplus microsoft-edge-insider-dev shotcut github-desktop -y
}y
elseif($choice -eq 5) # Media Server
{
    choco install seatools windirstat 7zip putty wireshark jellyfin sonarr radarr deluge -y
}