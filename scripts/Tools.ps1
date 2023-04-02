# ---------------------------------------------- #
# Browsers  ------------------------------------ #
# ---------------------------------------------- #
choco install -y googlechrome
choco install -y firefox

# ---------------------------------------------- #
# Common tools  --------------------------------- #
# ---------------------------------------------- #
choco install -y 7zip
choco install -y paint.net
choco install -y zoomit
winget install -e -h --id WinDirStat.WinDirStat
winget install -e -h --id Microsoft.BingWallpaper
winget install -e -h --id Obsidian.Obsidian
winget install -e -h --id JohnMacFarlane.Pandoc
winget install -e -h --id Microsoft.Whiteboard -s msstore
winget install -e -h --id Microsoft.PowerToys # settings to sync
winget install -e -h --id Microsoft.Teams
winget install -e -h --id Microsoft.Office

# ---------------------------------------------- #
# Dev tools  ----------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id AndreasWascher.RepoZ
winget install -e -h --id Microsoft.PowerShell


# ---------------------------------------------- #
# Prompt  -------------------------------------- #
# ---------------------------------------------- #
pwsh -Command { Install-Module posh-git -Scope CurrentUser -Force }
winget install -e -h --id JanDeDobbeleer.OhMyPosh

# ---------------------------------------------- #
# PowerShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.PowerShell
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Remove-Item -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\dotfiles\config\powerShell\Microsoft.PowerShell_profile.ps1"

# ---------------------------------------------- #
# NuShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Nushell.Nushell
# saves an initialization script to ~/.oh-my-posh.nu that will be used in Nushell config file
oh-my-posh init nu --config "$env:USERPROFILE\AWS-Development-Environment\config\prompt\.oh-my-posh.omp.json"
Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Target "$env:USERPROFILE\dotfiles\config\nu\config.nu"
# config auto complete dotnet / nuke / ...

# ---------------------------------------------- #
# Windows Terminal ----------------------------- #
# ---------------------------------------------- #
# Windows Terminal (stable + preview) install with Cascadia Code PL font
winget install -e -h --id Microsoft.WindowsTerminal -s msstore
winget install -e -h --id Microsoft.WindowsTerminalPreview -s msstore
choco install -y cascadiacodepl
# Windows terminal configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\AWS-Development-Environment\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\"
# Windows terminal preview configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\AWS-Development-Environment\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\RoamingState\"

# ---------------------------------------------- #
# Azure tools  --------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.AzureCLI
winget install -e -h --id Amazon.AWSCLI
winget install -e -h --id Amazon.AWSSAMCLI
winget install -e -h --id Amazon.AWSSAMCLIV2
winget install -e -h --id Amazon.AWSSAMCLIV2Preview
winget install -e -h --id Amazon.Cloud9
winget install -e -h --id Amazon.ElasticBeanstalkCLI
winget install -e -h --id Amazon.ElasticBeanstalkCLIV2
winget install -e -h --id Amazon.ElasticBeanstalkCLIV2Preview
winget install -e -h --id Amazon.ElasticContainerRegistryTools
winget install -e -h --id Amazon.ElasticContainerServiceCLI
winget install -e -h --id Amazon.ElasticContainerServiceCLIV2
winget install -e -h --id Amazon.ElasticContainerServiceCLIV2Preview
winget install -e -h --id Amazon.ElasticLoadBalancingCLI
winget install -e -h --id Amazon.ElasticLoadBalancingCLIV2
winget install -e -h --id Amazon.ElasticLoadBalancingCLIV2Preview
winget install -e -h --id Amazon.ElasticTranscoderCLI
winget install -e -h --id Amazon.ElasticTranscoderCLIV2
winget install -e -h --id Amazon.ElasticTranscoderCLIV2Preview
