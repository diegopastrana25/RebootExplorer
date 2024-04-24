@echo off
taskkill /f /im explorer.exe
start explorer.exe
echo $wshell = New-Object -ComObject Wscript.Shell > "%temp%\message.ps1"
echo $wshell.Popup("Explorer restarted", 2, "RebootExplorer", 0x30) >> "%temp%\message.ps1"
powershell -ExecutionPolicy ByPass -File "%temp%\message.ps1"
del "%temp%\message.ps1"
