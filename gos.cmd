@echo off

cls

rem Check Go source path
call :check_go_src %CD%
if ERRORLEVEL 1 goto :eof

call :get_name %CD%

echo go install
if exist %GOBIN%\%GNAME%.exe erase %GOBIN%\%GNAME%.exe
go install
if ERRORLEVEL 1 goto :eof

echo swagger generate spec
rem swagger generate spec>swagger.json
rem more swagger.json

echo Running %GNAME%...
%GNAME%

goto :eof

:check_go_src
setlocal enabledelayedexpansion
call set subdir=%%CD:!GOPATH!\src=%%
if "%subdir%"=="%CD%" (
	echo Current directory is not a subfolder of %%GOPATH%%\src:
	echo %GOPATH%\src
	exit /b 1
)
goto :eof

:get_name
set GNAME=%~n1
goto :eof
