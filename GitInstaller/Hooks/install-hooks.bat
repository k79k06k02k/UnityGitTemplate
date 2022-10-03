@echo OFF
setlocal
set parent=%~dp0
for %%a in ("%parent:~0,-1%") do set ParentPath=%%~dpa
for %%a in ("%ParentPath:~0,-1%") do set ParentPath=%%~dpa
set CurrentFath=%~dp0

set list=post-checkout post-merge prepare-commit-msg
(for %%f in (%list%) do (
     echo From: %CurrentFath%\%%f
	 echo To: : %ParentPath%.git\hooks\%%f
	 
	 copy %CurrentFath%\%%f %ParentPath%.git\hooks\%%f 
	 echo.
))

echo Finish!!
echo.
echo.

