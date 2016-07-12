@echo off

if "%~1" == "handle" call :hhandle
if "%~1" == "" call :howto
goto :eof

:howto
echo handle
goto :eof

:hhandle
echo.
echo 1) Retrieve pid
echo ^>handle ^<file_name^>
echo.
echo 2) Retrieve handler
echo ^>handle -p ^<pid^> ^| gs grep ^<file_name^>
echo.
echo 3) Close handler without prompt
echo ^>handle -c ^<hdl^> -y -p ^<pid^>
goto :eof
