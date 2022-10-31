@@echo off
if "%1x" == "x" goto usage

for /R "%1" %%I in (*.zip *.7z) do (
	"%ProgramFiles%\7-Zip\7z.exe" x -y -o"%%~dpnI" "%%~dpnxI"
	del /q /f "%%~dpnxI" 
)

exit /b

:usage
echo unzipall folder

