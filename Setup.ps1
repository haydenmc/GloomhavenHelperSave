#Requires -RunAsAdministrator

# Delete existing config
if (Test-Path "$env:USERPROFILE\.ghh")
{
    Remove-Item -Recurse -Force -Path "$env:USERPROFILE\.ghh"
}

# Set up symlink to repo
& cmd.exe /C "mklink /J `"%USERPROFILE%\.ghh`" `"$PSScriptRoot`""