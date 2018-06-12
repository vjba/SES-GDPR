# SES-GDPR
Simple script(s) to remove sensitive information from POS systems in SES in conformity to GDPR and DPA

Automatically destroys ID proof images and finance agreement pdf documents when system is idle for `20 minutes`

A desktop shortcut is installed giving the option for manual operation


## Installation Instructions

1.  Download the latest installation scripts as a zip from the [releases page](https://github.com/vjba/SES-GDPR/releases)
2.  Extract the files
3.  Run `INSTALL.BAT`

## Removal Instructions

1.  Navigate to your user profile `C:\Users\%UserProfile%\`
2.  Run `UNINSTALL.BAT`

### Notes

* All files and/or directories removed by the script will be _**PERMANENTLY**_ destroyed on execution, this saves users having to perform the extra steps necessary to empty the recycle bin on a regular basis.
* These scripts assume the POS system is Windows 10 _**and**_ the save paths for the Camera app and browser downloads are set to the defaults:
  * `C:\Users\%UserProfile%\Downloads` for any .pdf finance agreement documents downloaded from browsers.
  * `C:\Users\%UserProfile\Pictures\Camera Roll` for any images captured via the Windows 10 Camera app.
* These scripts do not require any elevated privileges at all, so any user can make use of them.
* These scripts come with **NO WARRANTY** whatsoever, please [**READ THE LICENSE**](https://github.com/vjba/SES-GDPR/blob/master/LICENSE) for more information.
