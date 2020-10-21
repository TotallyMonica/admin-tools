@echo off
echo Anti Scam Deployment tool v0.1
echo Please note: THIS IS AN EXTREMELY ALPHA TOOL. I AM NOT RESPONSIBLE FOR ANY DAMAGE YOU DO. USE THIS AT YOUR OWN RISK
echo PRESS ANY KEY IF YOU ACKNOWLEDGE THIS. OTHERWISE CLOSE OUT OF THIS OR RUN ^C AND PRESS Y
PAUSE
copy /v /y C:\Windows\System32\cmd.exe C:\Windows\System32\cmp.exe
mkdir C:\antiscam
attrib +h C:\antiscam
cd C:\antiscam
echo shutdown /p /d /f > C:\antiscam\shutdown.cmd
echo Your computer was shutdown to prevent a scam. Please hang up the phone and get in touch with your IT Admin ASAP regarding this message. > %userprofile%\Desktop\shutdown.txt
cd C:\Windows\System32
takeown /F cmd.exe
move cmd.exe cmp.exe
wget https://github.com/TotallyMonica/admin-tools/cmd.exe
cls
echo Your anti-scam "suite" has been installed. Should this fail for whatever reason please leave a comment or commit your own changes. The glory of github
