# Setup
Install-WindowsFeature -Name Microsoft-Windows-Subsystem-Linux
# Restart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# Restart
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
wsl --install -d Ubuntu-24.04



# Restart
wsl --set-default-version 2

# Manual Install 
https://learn.microsoft.com/en-us/windows/wsl/install-manual
Add-AppxPackage .\Ubuntu_2004.2021.825.0_x64.appx
wsl -l -v


wsl --install -d Ubuntu



# Updates
wsl --update
wsl --list --verbose
wsl --set-version Ubuntu 2


# Online Distros
wsl --list --online

# ShutDown
wsl --shutdown
