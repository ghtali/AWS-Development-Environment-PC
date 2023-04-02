# Description: Install IDEs

winget install --id=Microsoft.VisualStudio.2022.Community  -e --silent --override "--wait --quiet --addProductLang En-us --config $env:USERPROFILE\AWS-Development-Environment\config\vs2022\.vsconfig"
# For simplicity, extensions will not be installed from here but manually selected from Roaming Extension Manager menu once logged in with personnalization account
# Only exception is ozcode extension which requires and independent installer and therefore cannot be installed from VS.
choco install -y ozcode-vs2022

# Chocolatey version is more up-to-date than winget version
choco install -y vscode