@echo off

:: MOVES SCRIPT TO HOME ROOT DIRECTORY
xcopy /q/v SES-GDPR.BAT %UserProfile%\
echo SUCCESS: Deletion script installed 

:: CREATES SCHEDULE FOR DELETION ON 1HR OF IDLE
schtasks /create /tn SES-GDPR-IDLE /tr %UserProfile%\SES-GDPR.BAT /sc onidle /i 20

echo SUCCESS: Install complete!
echo Press Enter to exit
set /p input=