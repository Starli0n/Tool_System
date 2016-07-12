@echo off

SET VENDOR_TARGET=%cd%/vendor/phpunit/phpunit/phpunit

if exist %VENDOR_TARGET% (
	echo -- PHPUnit vendor --
	@php "%VENDOR_TARGET%" %*
) else (
	echo -- PHPUnit system --
	@php "%~dp0phpunit.phar" %*
)
