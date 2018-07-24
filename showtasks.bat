call runcrud
if "%ERRORLEVEL%" == "0" goto runbrowser
echo Cannot run runcrud
goto fail

:runbrowser
call "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if "%ERRORLEVEL%" == "0" goto runpage
echo Cannot open a browser
goto fail

:runpage
start http://localhost:8080/crud/v1/task/getTasks
goto end

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.