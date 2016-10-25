@echo off
echo user %USR1%> ftpcmd.dat

echo %PAS1%>> ftpcmd.dat

echo ASCII>> ftpcmd.dat

echo LCD %WORKSPACE% >> ftpcmd.dat

echo CD CURAOD >> ftpcmd.dat

echo PUT DEVOPS\DATE.RPGLE   DEVOPS.DATE>> ftpcmd.dat

echo quote rcmd CHGPFM FILE(CURAOD/DEVOPS) MBR(XDATE) SRCTYPE(RPGLE) TEXT('Convert date Devops Test 1') >> ftpcmd.dat

echo quote rcmd CRTBNDRPG PGM(CURAOD/XDATE) SRCFILE(CURAOD/DEVOPS) SRCMBR(XDATE) >> ftpcmd.dat

echo bye>> ftpcmd.dat

ftp -n -s:ftpcmd.dat 9.51.97.40

del "%WORKSPACE%\ftpcmd.dat"

