@echo off
set /P user="What account would you like to create today? (Note: NO SPACES!)
set /P rdp="Would you like to enable RDP for %user%? (yes/no)
net user %user% %user% /add
IF %rdp%==yes net localgroup "Remote Desktop Users" %user% /add
echo Done!
IF %rdp%=yes (echo Account %user% was created with username %user% and password %user% and Remote Desktop access. If you're dealing with sensitive data, it's highly recommended you change the password) ELSE (echo Account %user% was created with username %user% and password %user%. If you're dealing with sensitive data, it's highly recommended you change the password)
PAUSE

