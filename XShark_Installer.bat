@echo off
set nl=^


set "installed="

echo ^- XShark Installer ^| V1.0.2 Release ^-
echo.
echo.
echo.
echo ^> Installing XShark.jar
echo.
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/26926802306236/xshark-java-install/main/XShark.jar -OutFile XShark.jar"
echo ^> Installing XShark.json
echo.
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/26926802306236/xshark-java-install/main/XShark.json -OutFile XShark.json"

echo ^> Creating XShark Folder
echo.
md XShark

echo ^> Moving Files into XShark
echo.
move /Y XShark.jar XShark
echo ^> Moved XShark.jar to XShark
echo.
move /Y XShark.json XShark
echo ^> Moved XShark.json to XShark
echo.
cls

:: Removed Moved File

echo ^- XShark Installer ^| V1.0.2 Release ^-
echo.
echo.
echo.
echo ^> Installing XShark.jar
echo.
echo ^> Installing XShark.json
echo.
echo ^> Creating XShark Folder
echo.
echo ^> Moving Files into XShark
echo.
echo ^> Moved XShark.jar to XShark
echo.
echo ^> Moved XShark.json to XShark
echo.

echo ^> Checking If XShark Is Already Installed

if EXIST C:\Users\%username%\AppData\Roaming\.minecraft\versions\XShark (
   echo ^> Found Install^, Deleting Previous Install
   echo.
   rmdir /S /Q C:\Users\%username%\AppData\Roaming\.minecraft\versions\XShark
   echo ^> Deleted C:\Users\%username%\AppData\Roaming\.minecraft\versions\XShark\
   echo.
   set "installed=y"
) ELSE (
   echo ^> XShark Is Not Installed^, Continueing
   echo.
)

echo ^> Moving XShark to Minecraft Installs
echo.
move /Y XShark C:\Users\%username%\AppData\Roaming\.minecraft\versions
echo ^> Moved XShark to C:\Users\%username%\AppData\Roaming\.minecraft\versions
echo.

:: Again
cls

echo ^- XShark Installer ^| V1.0.2 Release ^-
echo.
echo.
echo.
echo ^> Installing XShark.jar
echo.
echo ^> Installing XShark.json
echo.
echo ^> Creating XShark Folder
echo.
echo ^> Moving Files into XShark
echo.
echo ^> Moved XShark.jar to XShark
echo.
echo ^> Moved XShark.json to XShark
echo.
echo ^> Checking If XShark Is Already Installed
echo.
:: Checking if its Installed
if defined installed (
   echo ^> Found Install^, Deleting Previous Install
   echo.
   echo ^> Deleted C:\Users\%username%\AppData\Roaming\.minecraft\versions\XShark\
   echo.
) ELSE (
   echo ^> XShark Is Not Installed^, Continueing
   echo.
)
echo ^> Moving XShark to Minecraft Installs
echo.
echo ^> Moved XShark to C:\Users\%username%\AppData\Roaming\.minecraft\versions
echo.
echo.
echo ^> Finished Installing XShark^!
echo.
pause
exit