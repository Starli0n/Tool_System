@echo off

rem Usage: proxy [-u|-h|-s]
rem -u : unset proxy environment variable
rem -h : set proxy environment variables with http(s) prefixed
rem -s : show proxy  environment variables

if "%1"=="-s" goto END

if "%1"=="-u" (
	@set HTTPS_PROXY=
	@set HTTP_PROXY=
	goto END
)

set HTTP_PROXY=proxyusers.intranatixis.com:8080
set HTTPS_PROXY=proxyusers.intranatixis.com:8080

if "%1"=="-h" (
	set HTTP_PROXY=http://%HTTP_PROXY%
	set HTTPS_PROXY=https://%HTTPS_PROXY%
)

:END
echo HTTP_PROXY=%HTTP_PROXY%
echo HTTPS_PROXY=%HTTPS_PROXY%
