@echo off
echo Hello, thank you for using GTA V Mode selector!
echo Please, choose the following options
echo 1. Load original GTA Files (for anti-ban prot)
echo 2. Load modded GTA Files (for SP and fun!)
echo Please type an option below:
@echo off
set /p id="Type an option= "

if "%id%"=="1" goto original
if "%id%"=="2" goto mod
if "%id%"=="" goto noselect

:original
if exist "Grand Theft Auto V" ( 
ren "Grand Theft Auto V" "Grand Theft Auto V Modded"
)
ren "Grand Theft Auto V Original" "Grand Theft Auto V"
)
goto done

:mod
if exist "Grand Theft Auto V" ( 
ren "Grand Theft Auto V" "Grand Theft Auto V Original"
)
ren "Grand Theft Auto V Modded" "Grand Theft Auto V"
)
goto done

:noselect
echo You have not selected an option. Closing...
goto finished

:done
if %errorlevel%==0 (
echo Command run successfully!
) else (
echo You are already on that mode!
)
echo Now enjoy playing!!
goto finished

:finished
pause
