@echo off

if "%~1" == "cmd" call :wcmder
if "%~1" == "do" call :wdocker
if "%~1" == "go" call :wgo
if "%~1" == "src" call :wsrc
if "%~1" == "st" call :wst
if "%~1" == "sys" call :wsys
if "%~1" == "to" call :wtools
if "%~1" == "www" call :wweb
cls
if "%~1" == "" call :wmenu
goto :eof

:wmenu
echo ---  Menu ---
echo cmd  %TOOLS%\Cmder_mini
echo do   %TOOLS%\Docker
echo go   D:\Source\Go\src\github.com\Starli0n
echo src  D:\Source
echo st   %TOOLS%\SublimeText\Data\Packages
echo sys  %TOOLS%\System
echo to   %TOOLS%
echo www  C:\xampp\htdocs
goto :eof

:wcmder
Title Cmder
cmd /c RenameTab Cmder
cd /d %TOOLS%\Cmder_mini
goto :eof

:wdocker
Title Docker
cmd /c RenameTab Docker
cd /d %TOOLS%\Docker
@FOR /f "tokens=*" %%i IN ('docker-machine env %DOCKER_MACHINE_NAME%') DO @%%i
goto :eof

:wgo
Title Go
cmd /c RenameTab Go
cd /d D:\Source\Go\src\github.com\Starli0n
doskey gb=go build $*
doskey gi=go install $*
doskey sgs=swagger generate spec
goto :eof

:wsrc
Title Source
cmd /c RenameTab Source
cd /d D:\Source
goto :eof

:wst
Title Sublime Text
cmd /c RenameTab SublimeText
cd /d %TOOLS%\SublimeText\Data\Packages
goto :eof

:wsys
Title System
cmd /c RenameTab System
cd /d %TOOLS%\System
goto :eof

:wtools
Title Tools
cmd /c RenameTab Tools
cd /d %TOOLS%
goto :eof

:wweb
Title Web
cmd /c RenameTab Web
cd /d C:\xampp\htdocs
goto :eof
