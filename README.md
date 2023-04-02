# AWS Development Environment for a fresh Windows installation

This repository contains everything needed to set up an AWS development environment on a fresh Windows installation. It includes the tools, config files, and preferences that I like to use. You can use this repository as a starting point, fork it, modify the scripts and settings files with your own preferences, and use it to set up your development machine.

## How It Works

This setup uses [Boxstarter](https://boxstarter.org/) to automate the installation and avoid interruptions during installation. You can launch the installation directly from an URL without manually downloading any software before. The setup is automated using PowerShell scripts, and software is installed using two different package managers for Windows: [Chocolatey](https://chocolatey.org/) and [Windows Package Manager](https://docs.microsoft.com/en-us/windows/package-manager/) (winget). Winget is mainly used to install tools, except when packages were only available on Chocolatey or more up-to-date on Chocolatey.

One of the first steps of the bootstarter.ps1 script is to install Git and clone this repository. It uses it to call the other scripts in the repository and retrieve the settings files. Symbolic links are used to make the different settings files on the machine being configured to point to the settings files contained in this Git repository. This enables the files to be committed easily when settings are changed.

## Usage

To use this repository to set up your own AWS development environment, follow these steps:

1. Fork this repository.
2. Clone the forked repository to your local machine.
3. Modify the scripts and settings files with your own preferences.
4. Push the changes to your forked repository.
5. Click on the **Install** link below to launch the installation process. Make sure to update the link with the corresponding path on your fork.

   ## This is the link to launch the installation process for this repository.

   [Install](https://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/ghtali/AWS-Development-Environment-PC/features/initialization/boxstarter.ps1)

## Make sure to update the link with the corresponding path on your fork.

    https://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/###your-username###/AWS-Development-Environment-PC/features/initialization/boxstarter.ps1

## Disclaimer

The code in this repository is provided as-is, without any warranties of any kind. Use it at your own risk.

## Contributing

If you notice any issues or have suggestions for improving this repository, please create an issue or submit a pull request. Contributions are always welcome!
