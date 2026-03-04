@echo off
setlocal
cd C:\Server
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set "ipv4_address=%%a"
    goto :found_ip
)
mkdir C:\Server
:found_ip
echo Your IPv4 Address is: %ipv4_address%
set "serverdir=C:\Server"
echo ---------------------------------------------------------------------------------
echo Welcome to the simple server Hosting interface! This is the software interface for hosting a simple http python-based server. Began on 24/11/2025. 
echo.
echo To access; As of 0.1.3.3, the form of access is: http//:%ipv4_address%:8000 [auto set] within a browser.
echo All files and access is contained within the C:\Server directory.
echo.

echo.
echo Currently only operational on same-network access. No r/w capabilities.
echo User Directory currently: %Username%
echo Server Directory currently: %serverdir%
echo ---------------------------------------------------------------------------------
python -m http.server 8000