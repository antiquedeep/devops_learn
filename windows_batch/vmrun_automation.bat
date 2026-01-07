@echo off
TITLE "Script for starting and stopping a VM"
SET vmRunPath="C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe"
SET vmPaths="C:\Users\deepak\Documents\Virtual Machines"

:MENU
set /p action="Enter 'start|stop' to start or stop all vms: "
SETLOCAL ENABLEDELAYEDEXPANSION
IF /I %action%==start (
    FOR /R %vmPaths% %%A IN (*.vmx) DO ( %vmRunPath% -T ws start "%%A" nogui )
) ELSE (
IF /I  %action%==stop (
    FOR /R %vmPaths% %%A IN (*.vmx) DO ( %vmRunPath% -T ws stop "%%A" soft )
) ELSE (
    echo "Enter Valid input"
    GOTO MENU
)
)
ENDLOCAL
%vmRunPath% List
pause