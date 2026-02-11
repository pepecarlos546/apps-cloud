@echo off
title Limpiador de Archivos Temporales
color 0A

echo ===========================================
echo   LIMPIANDO ARCHIVOS TEMPORALES...
echo ===========================================

:: Borrar temporales del usuario
echo Eliminando temporales de usuario en %temp%...
del /s /f /q "%temp%\*.*"
for /d %%p in ("%temp%\*.*") do rmdir /s /q "%%p"

:: Borrar temporales del sistema
echo Eliminando temporales de Windows...
del /s /f /q "C:\Windows\Temp\*.*"
for /d %%p in ("C:\Windows\Temp\*.*") do rmdir /s /q "%%p"

:: Borrar Prefetch (Opcional, requiere permisos de administrador)
echo Eliminando Prefetch...
del /s /f /q "C:\Windows\Prefetch\*.*"
for /d %%p in ("C:\Windows\Prefetch\*.*") do rmdir /s /q "%%p"

echo ===========================================
echo   PROCESO FINALIZADO CON EXITO
echo ===========================================
exit
