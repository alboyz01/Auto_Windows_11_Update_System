# PowerShell script to install and configure WSUS
Install-WindowsFeature -Name UpdateServices, UpdateServices-UI, UpdateServices-WidDB, UpdateServices-Services

# Post-installation tasks
& "C:\Program Files\Update Services\Tools\wsusutil.exe" postinstall CONTENT_DIR=C:\WSUS

# Configuring WSUS for automatic updates
Set-WSUSServerConfiguration -UpdateLanguages "en" -SyncFromMicrosoftUpdate $true -SyncIntervalInMinutes 60
