@echo off

echo                       		     WARNING : you will delete the files below! 

for /r %%i in (*.bak, *.exe) do (
	echo %%i
)

set /p read=Do you really want to delete the files above ? (Y / n)  

if /i %read% EQU Y (
	for /r %%i in (*.bak, *.exe) do (
		del "%%i"
		echo %%i deleted
	)
	echo done
) else (
	echo Canceled
)

timeout /t 1 > nul
