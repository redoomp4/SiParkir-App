@echo off
echo [*] Mengompilasi server...
if not exist bin mkdir bin
javac -d bin -cp "lib/*" src/ResetPassword.java
if %errorlevel% neq 0 (
    echo [!] Gagal mengompilasi server.
    pause
    exit /b %errorlevel%
)
echo [*] Server aktif di http://localhost:5580
java -cp "bin;lib/*" ResetPassword
pause
