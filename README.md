# SES-GDPR
Simple script(s) to remove sensitive information from POS systems in SES in comformity to GDPR and DPA

Automatically destroys ID proof images and finance agreement pdf documents when system is idle for `20 minutes`


## Instructions

1.  Download installation scripts as a zip [here](https://github.com/vjba/SES-GDPR/archive/1.0.zip), or check the [releases page](https://github.com/vjba/SES-GDPR/releases)
2.  Extract / Unzip the files
3.  Run the INSTALL.BAT file
4.  DONE!   


### Notes

* All files and/or diretories removed by the script will _**PERMANENTLY**_ destroyed on execution, this saves users having to perform the extra steps necessary to empty the recycle bin on a regular basis.
* These scripts assume the POS system is Windows 10 _**and**_ the save paths for the Camera app and browser downloads are set to the defaults:
  * `C:\Users\%UserProfile%\Downloads` for any .pdf finance agreement documents downloaded from browsers.
  * `C:\Users\%UserProfile\Pictures\Camera Roll` for any images captured via the Windows 10 Camera app.
* These scripts do not require any elevated privileges at all, so any user can make use of them.
