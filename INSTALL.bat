@echo off
title Installer Mod Bahasa Indonesia - Cyberpunk 2077
color 0B
echo =====================================================================
echo       CYBERPUNK 2077: INDONESIAN TRANSLATION MOD v1.0.0
echo            Divisi Game Modding & Lokalisasi - Milky Brain
echo =====================================================================
echo.
echo Pastikan file INSTALL.bat ini berada di dalam folder ekstraksi mod.
echo Script ini akan menyalin file mod langsung ke folder Cyberpunk 2077 Anda.
echo.

set /p GAME_DIR="Masukkan path folder instalasi Cyberpunk 2077 Anda: "

if not exist "%GAME_DIR%\bin\x64\Cyberpunk2077.exe" (
    echo [ERROR] Cyberpunk2077.exe tidak ditemukan di folder tersebut!
    echo Pastikan Anda memasukkan path root game (contoh: C:\Program Files (x86)\Steam\steamapps\common\Cyberpunk 2077).
    pause
    exit /b 1
)

echo.
echo Menyiapkan folder tujuan di: %GAME_DIR%\archive\pc\mod\ ...
if not exist "%GAME_DIR%\archive\pc\mod" mkdir "%GAME_DIR%\archive\pc\mod"

echo Menyalin cp2077_indo.archive ...
copy /Y "TIMPA_KE_FOLDER_GAME\archive\pc\mod\cp2077_indo.archive" "%GAME_DIR%\archive\pc\mod\cp2077_indo.archive"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo =====================================================================
    echo [BERHASIL] Mod Bahasa Indonesia Cyberpunk 2077 berhasil dipasang!
    echo Mod bersifat native (bebas mod loader eksternal seperti RED4ext).
    echo Anda bisa langsung meluncurkan game via Steam / GOG / Launcher.
    echo =====================================================================
) else (
    echo.
    echo [ERROR] Gagal menyalin file mod. Pastikan Anda memiliki izin akses administrator.
)

pause
