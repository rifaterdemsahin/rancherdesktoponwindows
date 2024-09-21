# Setup
Install-WindowsFeature -Name Microsoft-Windows-Subsystem-Linux
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# Restart
wsl --set-default-version 2
Add-AppxPackage .\Ubuntu_2004.2021.825.0_x64.appx
wsl -l -v


wsl --install -d Ubuntu



# Updates
wsl --update
wsl --list --verbose
wsl --set-version Ubuntu 2



# ShutDown
wsl --shutdown
