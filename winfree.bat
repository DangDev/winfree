


tzutil /s "SE Asia Standard Time"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters\ /v AllowEncryptionOracle /t REG_DWORD /d 2
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 1 /f
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f


cd %USERPROFILE%
mkdir WinFree
cd Winfree
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/curl.exe
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/7z.dll
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/7z.exe
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/nircmd.exe
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/account.bat
certutil.exe -urlcache -split -f https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip
7z x ngrok-stable-windows-amd64.zip


certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/ChromeSetup.exe
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/anti-close.bat
start ChromeSetup.exe
cls
@echo off
set /p id="Paste NGROK AUTHTOKEN (Ctrl+V): "
ngrok authtoken %id%
start ngrok tcp 3389 -region=au
start anti-close.bat
start account.bat
net start audiosrv
taskkill /f /im sqlservr.exe
taskkill /f /im Batch.exe
taskkill /f /im w3wp.exe
taskkill /f /im explorer.exe
start explorer.exe
exit
