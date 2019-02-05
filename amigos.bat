@echo off

setlocal enabledelayedexpansion

:inicio

set /p fichero = Introduzca el fichero para mostrar: 

echo -------

if not defined fichero go to inicio 

echo.
echo -------

for /F "tokens=1-4* useback" %%a in ("%fichero:"=%") do (

	set nombre=%%a

	set primeraletra=!nombre:~0,1!

	echo nombre: !nombre!
	echo * primera letra: !primeraletra!

	set apellido=%%b

	echo Nombre y Apellido: !nombre! !apellido!

	echo telefono: %%d
	echo ciudad: %%c

	echo ** El resto de la línea es %e
	echo. 

	)
pause