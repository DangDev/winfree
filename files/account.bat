ECHO off

set /p user="Enter your new Username: "
set /p pass="Enter your new account password: "
net user %user% %pass% /add
net localgroup administrators %user% /add

cd %USERPROFILE%\Winfree
certutil -urlcache -split -f https://raw.githubusercontent.com/DangDev/winfree/main/files/wallpaper.bmp
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %USERPROFILE%\Winfree\wallpaper.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
