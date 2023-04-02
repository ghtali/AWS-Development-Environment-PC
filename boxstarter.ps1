## This command disables User Account Control to run the script without user interaction, it is enabled at the end of the script.
## To avoid security concerns you can comment it if you prefer, otherwhise please check the software you install is safe and use this command at your own risk.
Disable-UAC
$Boxstarter.AutoLogin = $false
# Install git and clone repository containing scripts and config files
# TODO: see how to improve install that by using chezmoi (choco install -y chezmoi)
choco install -y git --params "/GitOnlyOnPath /NoShellIntegration /WindowsTerminal"
RefreshEnv
git clone https://github.com/ghtali/AWS-Development-Environment-PC.git "$ENV:USERPROFILE\AWS-Development-Environment-PC"
# Git configuration
Remove-Item -Path "$ENV:USERPROFILE\.gitconfig" -Force
New-Item -ItemType SymbolicLink -Path "$ENV:USERPROFILE\.gitconfig" -Target "$ENV:USERPROFILE\AWS-Development-Environment-PC\config\git\.gitconfig"
# TODO: configure git signature

# Winget configuration
Remove-Item -Path "$ENV:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$ENV:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json" -Target "$ENV:USERPROFILE\AWS-Development-Environment-PC\config\winget\settings.json"

#--- Enable developer mode on the system ---
Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1

#--- Setting up Windows ---
. "$ENV:USERPROFILE\AWS-Development-Environment-PC\scripts\FileExplorerSettings.ps1"
. "$ENV:USERPROFILE\AWS-Development-Environment-PC\scripts\RemoveDefaultApps.ps1"
. "$ENV:USERPROFILE\AWS-Development-Environment-PC\scripts\Tools.ps1"
. "$ENV:USERPROFILE\AWS-Development-Environment-PC\scripts\IDEs.ps1"

# TODO: install WSL2 / Ubuntu
# choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures
# choco install -y VirtualMachinePlatform -source windowsfeatures
# wsl --set-default-version 2
# choco install wsl2 --params "/Version:2 /Retry:true"

# TODO: Docker
# winget install -e -h --id suse.RancherDesktop

# // windowsfeatures (Windows Sandbox, .NET Framework)
# // Taskbar (Set-BoxstarterTaskbarOptions)

#--- reenabling critial items ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
