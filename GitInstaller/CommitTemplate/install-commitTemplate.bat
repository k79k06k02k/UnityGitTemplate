@echo OFF
setlocal
set parent=%~dp0
for %%a in ("%parent:~0,-1%") do set ParentPath=%%~dpa
for %%a in ("%ParentPath:~0,-1%") do set ParentPath=%%~dpa
set CurrentFath=%~dp0

set From=%CurrentFath%commit_msg_template.txt
set To=%ParentPath%.git\commit_msg_template.txt

echo %From%
echo %To%

copy %From% %To% 
echo.

git config commit.template .git\commit_msg_template.txt
git config commit.cleanup strip

echo Finish!!
echo.
echo.


