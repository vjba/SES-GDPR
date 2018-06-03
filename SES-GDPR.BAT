:: DELETES CUSTOMER FINANCE DOCUMENTS, EMPTIES ENTIRE DIRECTORY
set folder="%UserProfile%\Downloads"
cd /d %folder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /k/s/q || del "%%i" /k/s/q)

:: DELETES CUSTOMER ID PHOTOS, EMPTIES ENTIRE DIRECTORY
set folder="%UserProfile%\Pictures\Camera Roll"
cd /d %folder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /k/s/q || del "%%i" /k/s/q)
