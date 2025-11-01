# Adb & Fastboot Installer
### PowerShell Script for Windows 10/11
This script is going to download and configure platform-tools and Google USB Driver as Environment Variable.

Steps:
1. Run PowerShell as Administrator
2. Execute the following commands:

```
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/RealChiragOO7/dotfiles/main/windows/adb/adb_usb_driver.ps1" -OutFile "C:\adb_usb_driver.ps1"
```

```
Powershell.exe -ExecutionPolicy RemoteSigned -File  "C:\adb_usb_driver.ps1"
```
3. Go to Windows Update and check for "Optional Updates"
4. Enjoy :)