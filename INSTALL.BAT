@echo off

:: REMOVES OLDER SCRIPTS FOR UPDATE
schtasks /delete /tn SES-GDPR-IDLE /f
del %UserProfile%\SES-GDPR.BAT

:: MOVES SCRIPTS TO HOME ROOT DIRECTORY
xcopy /q/v SES-GDPR.BAT %UserProfile%\
echo SUCCESS: Data deletion script installed
xcopy /q/v UNINSTALL.BAT %UserProfile%\
echo SUCCESS: Uninstall script installed

:: CREATES DESKTOP SHORTCUT FOR MANUAL LAUNCH
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%UserProfile%\Desktop\SES-GDPR.lnk');$s.TargetPath='%UserProfile%\SES-GDPR.BAT';$s.Save()"
echo SUCCESS: Desktop shortcut installed

:: CREATES SCHEDULE FOR DELETION ON 1HR OF IDLE
schtasks /create /tn SES-GDPR-IDLE /tr %UserProfile%\SES-GDPR.BAT /sc onidle /i 20

echo SUCCESS: Install complete!
echo Press Enter to exit
set /p input=
