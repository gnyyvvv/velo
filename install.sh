#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Velo o'rnatilmoqda...${NC}"

ARCH=$(uname -m)
case $ARCH in
    x86_64)  ARCH_NAME="x86_64" ;;
    aarch64) ARCH_NAME="aarch64" ;;
    *)       echo -e "${RED}Xato: $ARCH qo'llab-quvvatlanmaydi${NC}"; exit 1 ;;
esac

VERSION="0.1"
# ⭐ TO'G'RI USERNAME: gnyyvvv (3 ta y)
URL="https://github.com/gnyyvvv/velo/raw/asosiy/Velo-${VERSION}-${ARCH_NAME}.AppImage"

TMP_FILE="/tmp/Velo-${VERSION}-${ARCH_NAME}.AppImage"

echo "Yuklab olinmoqda: $URL"
if command -v curl >/dev/null 2>&1; then
    curl -sSL -o "$TMP_FILE" "$URL"
else
    wget -q -O "$TMP_FILE" "$URL"
fi

chmod +x "$TMP_FILE"

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

mv "$TMP_FILE" "$INSTALL_DIR/velo"
chmod +x "$INSTALL_DIR/velo"

if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    export PATH="$HOME/.local/bin:$PATH"
fi

echo -e "${GREEN}✅ Velo o'rnatildi!${NC}"
echo ""
velo --version || echo "Terminalni qayta oching: source ~/.bashrc"
