@echo off
TITLE Menu de Herramientas de Sistema
:: Forzar ejecución como Administrador
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Solicitando permisos de administrador...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

:MENU
cls
color 0B
echo =================================================
echo           MENU DE CONFIGURACIONES Y LIMPIEZA
echo =================================================
echo  1. Limpiar archivos temporales (Todo)
echo  2. Ejecutar verificador de archivos (SFC /Scannow)
echo  3. Optimizar/Desfragmentar Disco (C:)
echo  4. Vaciar Papelera de Reciclaje
echo  5. Salir
echo =================================================
set /p op=Seleccione una opcion (1-5): 

if %op%==1 goto LIMPIEZA
if %op%==2 goto SFC
if %op%==3 goto DEFRAG
if %op%==4 goto PAPELERA
if %op%==5 goto SALIR

:LIMPIEZA
echo Ejecutando limpieza profunda...
del /s /f /q "%temp%\*.*" >nul 2>&1
rd /s /q "%temp%" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
rd /s /q "C:\Windows\Temp" >nul 2>&1
echo Limpieza completada.
pause
goto MENU

:SFC
echo Buscando errores en el sistema (esto puede tardar)...
sfc /scannow
pause
goto MENU

:DEFRAG
echo Optimizando unidad C:...
defrag C: /O
pause
goto MENU

:PAPELERA
echo Vaciando papelera...
rd /s /q %systemdrive%\$Recycle.bin >nul 2>&1
echo Papelera vaciada.
pause
goto MENU

:SALIR
exit