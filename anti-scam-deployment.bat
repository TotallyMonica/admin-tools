@echo off
echo Anti Scam Deployment tool v0.1
echo Please note: THIS IS AN EXTREMELY ALPHA TOOL. USE THIS AT YOUR OWN RISK
echo PRESS ANY KEY IF YOU ACKNOWLEDGE THIS, OTHERWISE CLOSE OUT OF THIS OR RUN ^C AND PRESS Y
PAUSE
copy /v /y C:\Windows\System32\cmd.exe C:\Windows\System32\cmp.exe
mkdir C:\antiscam
attrib +h C:\antiscam
cd C:\antiscam
echo shutdown /p /d /f > C:\antiscam\shutdown.cmd
echo Your computer was shutdown to prevent a scam. Please get in touch with your IT Admin ASAP regarding this message. > %userprofile%\Desktop\shutdown.txt
cd C:\Windows\System32
move 
wget https://github.com/TotallyMonica/admin-tools/cmd.exe
