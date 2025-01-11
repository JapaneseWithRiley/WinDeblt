@echo off
cls

echo "__          ___           _                         _____       _     _             _            "
echo "\ \        / (_)         | |                       |  __ \     | |   | |           | |           "
echo " \ \  /\  / / _ _ __   __| | _____      _____      | |  | | ___| |__ | | ___   __ _| |_ ___ _ __ "
echo "  \ \/  \/ / | | '_ \ / _` |/ _ \ \ /\ / / __|     | |  | |/ _ \ '_ \| |/ _ \ / _` | __/ _ \ '__|"
echo "   \  /\  /  | | | | | (_| | (_) \ V  V /\__ \     | |__| |  __/ |_) | | (_) | (_| | ||  __/ |   "
echo "    \/  \/   |_|_| |_|\__,_|\___/ \_/\_/ |___/     |_____/ \___|_.__/|_|\___/ \__,_|\__\___|_|   "

echo This tool allows you to debloat Windows pain-free.
echo This program is for people who want the best experience for their Windows installations.
echo PLEASE ONLY USE THIS ON A "fReSh" WINDOWS INSTALL!!!
echo PS: This program uses "PING 127.0.0.1 -n 11 >NUL" as a substitute for TIMEOUT.

PING 127.0.0.1 -n 6 >NUL
cls

echo "__          ___           _                         _____       _     _             _            "
echo "\ \        / (_)         | |                       |  __ \     | |   | |           | |           "
echo " \ \  /\  / / _ _ __   __| | _____      _____      | |  | | ___| |__ | | ___   __ _| |_ ___ _ __ "
echo "  \ \/  \/ / | | '_ \ / _` |/ _ \ \ /\ / / __|     | |  | |/ _ \ '_ \| |/ _ \ / _` | __/ _ \ '__|"
echo "   \  /\  /  | | | | | (_| | (_) \ V  V /\__ \     | |__| |  __/ |_) | | (_) | (_| | ||  __/ |   "
echo "    \/  \/   |_|_| |_|\__,_|\___/ \_/\_/ |___/     |_____/ \___|_.__/|_|\___/ \__,_|\__\___|_|   "

echo WHAT WOULD YOU LIKE TO DO?
echo 1 = Debloat
echo 2 = Quit

set /p N=Choose an option: 

if "%N%"=="1" goto debloat
if "%N%"=="2" goto quit

:debloat
echo What debloat do you want to use?
echo 1 = Bare Bones/General
echo 2 = Gaming
echo 3 = Professional (Office, Video Production etc.)
echo 4 = For a growing boy, girl, or enby (This comes PACKED with everything YOU "or prob just me ;)" could ever need)
echo 5 = Quit

set /p J=Choose an option: 

if "%j%" == "1" goto BG
if "%j%" == "2" goto GM
if "%j%" == "3" goto PN
if "%j%" == "4" goto ET
if "%j%" == "5" goto quit

:BG
echo DELETING MICROSOFT EDGE!
del /s /q /f "C:\Program Files (x86)\Microsoft"
echo DELETING MICROSOFT OFFICE!
del /s /q /f "C:\Program Files\Microsoft Office"
del /s /q /f "C:\Program Files\Microsoft Office 15"
echo DELETING WINDOWS MAIL!
del /s /q /f "C:\Program Files (x86)\Windows Mail"

echo Finished cleaning, please reboot
goto endR

:GM
echo DELETING MICROSOFT EDGE!
del /s /q /f "C:\Program Files (x86)\Microsoft"
echo DELETING MICROSOFT OFFICE!
del /s /q /f "C:\Program Files\Microsoft Office"
del /s /q /f "C:\Program Files\Microsoft Office 15"
echo DELETING WINDOWS MAIL!
del /s /q /f "C:\Program Files (x86)\Windows Mail"

$dir = "$env:temp\WinDeblt"
if (-not (Test-Path $dir)) {
    New-Item -ItemType Directory -Path $dir
}

(New-Object Net.WebClient).DownloadFile('https://cdn.fastly.steamstatic.com/client/installer/SteamSetup.exe', "$dir\SteamSetup.exe")

Start-Process -FilePath "$dir\SteamSetup.exe"

(New-Object Net.WebClient).DownloadFile('https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64', "$dir\SteamSetup.exe")

Start-Process -FilePath "$dir\DiscordSetup.exe"


echo Finished cleaning, your computer will now reboot...
goto endR

:quit
exit

:end
PING 127.0.0.1 -n 11 >NUL

:endR
PING 127.0.0.1 -n 11 >NUL
shutdown -r