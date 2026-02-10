@echo off
:: %~dp0 es la carpeta donde está este archivo .bat
set SCRIPT="%~dp0navegador_nativo_v2.ps1"

powershell -NoProfile -ExecutionPolicy Bypass -File %SCRIPT%

if %errorlevel% neq 0 (
    echo Hubo un error al iniciar. Intentando modo alternativo...
    powershell -ExecutionPolicy RemoteSigned -File %SCRIPT%
)
exit