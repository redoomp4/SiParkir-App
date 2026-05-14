@echo off
echo [*] Mengompilasi aplikasi...
if not exist bin mkdir bin
javac -d bin -cp "lib/*" src/*.java
if %errorlevel% neq 0 (
    echo [!] Gagal mengompilasi. Periksa kode Anda.
    pause
    exit /b %errorlevel%
)
echo [*] Berhasil! Menjalankan aplikasi...
java -cp "bin;lib/*" Login
pause
