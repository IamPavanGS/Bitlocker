@echo off

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
timeout /t 30 /nobreak
manage-bde -protectors -add C: -rp
manage-bde -on C:
for /f "tokens=2 delims==" %%J in ('wmic bios get serialnumber /value') do set serial=%%J
manage-bde -protectors C: -get >> C:\BitlockerPasswordL%serial%.txt
DEL "%~f0" > NUL
exit
