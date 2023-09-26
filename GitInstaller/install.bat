
set CurrentFath=%CD%

set CommitMessageBatch=%CurrentFath%\CommitTemplate\install-commitTemplate.bat
set HooksBatch=%CurrentFath%\Hooks\install-hooks.bat

git lfs install --local
call "%CommitMessageBatch%"
call "%HooksBatch%"

echo All Finish!!
echo.

pause

