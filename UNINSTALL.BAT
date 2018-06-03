@echo off

:: REMOVES OLDER SCRIPTS AND SCHTASK AND DELETES ITSELF
schtasks /delete /tn SES-GDPR-IDLE /f
echo SUCCESS: SES-GDPR-IDLE scheduled task removed

del %UserProfile%\SES-GDPR.BAT
echo SUCCESS: Old script removed

del %UserProfile%\Desktop\SES-GDPR.lnk
echo SUCCESS: Desktop shortcut removed
(goto) 2>nul & del "%~f0"
