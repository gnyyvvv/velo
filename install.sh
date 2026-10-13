#!/bin/bash
# ============================================================
# Velo Programming Language - Installer
# ============================================================
# Ishlatish:
#   curl -sSL https://raw.githubusercontent.com/gnyyvvv/velo/main/install.sh | bash
# ============================================================

set -e

# Ranglar
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# ============================================================
# Banner
# ============================================================
echo -e "${BLUE}"
cat << 'EOF'
 __   __  ___  _      ___
 \ \ / / | __|| |    / _ \
  \ V /  | _| | |__ | (_) |
   \_/   |___||____| \___/    v0.1
EOF
echo -e "${NC}"
echo "Velo Programming Language o'rnatilmoqda..."
echo ""

# ============================================================
# 1. OS va arxitekturani aniqlash
# ============================================================
OS=$(uname -s)
ARCH=$(uname -m)

if [ "$OS" != "Linux" ]; then
    echo -e "${RED}Xato: Bu skript faqat Linux uchun${NC}"
    echo "Windows: https://github.com/gnyyvvv/velo"
    exit 1
fi

case $ARCH in
    x86_64|amd64)  ARCH_NAME="x86_64" ;;
    aarch64|arm64) ARCH_NAME="aarch64" ;;
    *)
        echo -e "${RED}Xato: qo'llab-quvvatlanmaydigan arxitektura: $ARCH${NC}"
        exit 1
        ;;
esac

echo -e "${GREEN}✓${NC} OS: Linux ($ARCH_NAME)"

# ============================================================
# 2. Versiya va URL
# ============================================================
VERSION="0.1"
USERNAME="gnyyvvv"
REPO="velo"

# MUHIM: HEAD ishlatamiz — har qanday branch uchun ishlaydi
URL="https://github.com/${USERNAME}/${REPO}/raw/HEAD/Velo-${VERSION}-${ARCH_NAME}.AppImage"

echo -e "${GREEN}✓${NC} URL: $URL"
echo ""

# ============================================================
# 3. Yuklab olish
# ============================================================
TMP_FILE="/tmp/Velo-${VERSION}-${ARCH_NAME}.AppImage"

echo -e "${BLUE}→${NC} Yuklab olinmoqda..."

if command -v curl >/dev/null 2>&1; then
    curl -sSL --fail -o "$TMP_FILE" "$URL"
elif command -v wget >/dev/null 2>&1; then
    wget -q -O "$TMP_FILE" "$URL"
else
    echo -e "${RED}Xato: curl yoki wget topilmadi${NC}"
    echo "O'rnatish: sudo apt install curl"
    exit 1
fi

# ============================================================
# 4. Fayl to'g'rimi? (AppImage bo'lishi kerak)
# ============================================================
if [ ! -f "$TMP_FILE" ]; then
    echo -e "${RED}Xato: fayl yuklab olinmadi${NC}"
    exit 1
fi

# HTML yoki ELF ekanligini tekshirish
FILE_TYPE=$(file -b "$TMP_FILE")

if echo "$FILE_TYPE" | grep -qi "HTML"; then
    echo -e "${RED}Xato: HTML sahifa yuklab olindi (404)${NC}"
    echo "URL noto'g'ri: $URL"
    echo "Fayl turi: $FILE_TYPE"
    rm -f "$TMP_FILE"
    exit 1
fi

if ! echo "$FILE_TYPE" | grep -qi "ELF"; then
    echo -e "${YELLOW}⚠${NC}  Ogohlantirish: fayl turi kutilganidek emas"
    echo "Fayl turi: $FILE_TYPE"
fi

echo -e "${GREEN}✓${NC} Fayl yuklab olindi: $(du -h "$TMP_FILE" | cut -f1)"

# ============================================================
# 5. O'rnatish papkasini aniqlash
# ============================================================
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

# Eski faylni o'chirish
rm -f "$INSTALL_DIR/velo"

# Ko'chirish
mv "$TMP_FILE" "$INSTALL_DIR/velo"
chmod +x "$INSTALL_DIR/velo"

echo -e "${GREEN}✓${NC} O'rnatildi: $INSTALL_DIR/velo"

# ============================================================
# 6. PATH'ga qo'shish
# ============================================================
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    echo -e "${BLUE}→${NC} PATH'ga qo'shilmoqda..."
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    export PATH="$HOME/.local/bin:$PATH"
fi

# ============================================================
# 7. Tekshirish
# ============================================================
echo ""
if command -v velo >/dev/null 2>&1; then
    echo -e "${GREEN}✅ Velo o'rnatildi!${NC}"
    echo ""
    velo --version
    echo ""
    echo "Sinash uchun:"
    echo -e "  ${BLUE}velo --version${NC}"
    echo -e "  ${BLUE}echo 'print(\"Salom!\")' > test.vl && velo test.vl${NC}"
else
    echo -e "${YELLOW}⚠${NC}  Velo o'rnatildi, lekin PATH'da emas."
    echo "Terminalni qayta oching yoki:"
    echo -e "  ${BLUE}source ~/.bashrc${NC}"
    echo ""
    echo "Yoki to'g'ridan-to'g'ri ishlatish:"
    echo -e "  ${BLUE}$INSTALL_DIR/velo --version${NC}"
fi
