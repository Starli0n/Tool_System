@echo off

set hf_dir=D:\Dev\WorkItems\Hotfix
set hf_tpl=%hf_dir%\template.txt

for /f "tokens=1-3 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%b-%%a)
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set hf_file=%hf_dir%\%mydate%_%mytime%.txt

copy %hf_tpl% %hf_file%
subl %hf_file%
