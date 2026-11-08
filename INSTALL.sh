#!/bin/bash
echo "====================================================================="
echo "      CYBERPUNK 2077: INDONESIAN TRANSLATION MOD v1.0.0"
echo "           Divisi Game Modding & Lokalisasi - Milky Brain"
echo "====================================================================="
echo ""

read -p "Masukkan path folder instalasi Cyberpunk 2077 Anda: " GAME_DIR

if [ ! -f "$GAME_DIR/bin/x64/Cyberpunk2077.exe" ]; then
    echo "[ERROR] Cyberpunk2077.exe tidak ditemukan di $GAME_DIR!"
    echo "Pastikan Anda memasukkan path root game Cyberpunk 2077."
    exit 1
fi

echo "Menyiapkan direktori tujuan di: $GAME_DIR/archive/pc/mod/ ..."
mkdir -p "$GAME_DIR/archive/pc/mod"

echo "Menyalin cp2077_indo.archive ..."
cp -v "TIMPA_KE_FOLDER_GAME/archive/pc/mod/cp2077_indo.archive" "$GAME_DIR/archive/pc/mod/cp2077_indo.archive"

if [ $? -eq 0 ]; then
    echo ""
    echo "====================================================================="
    echo "[BERHASIL] Mod Bahasa Indonesia Cyberpunk 2077 berhasil dipasang!"
    echo "Mod bersifat native (bebas mod loader eksternal seperti RED4ext)."
    echo "Bisa langsung dimainkan via Steam / Proton / Lutris / Heroic."
    echo "====================================================================="
else
    echo "[ERROR] Gagal menyalin berkas mod."
fi
