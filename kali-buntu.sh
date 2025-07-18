#!/bin/bash
set -e

echo "Adding Kali Linux repo to Ubuntu sources..."

# 1. Add Kali repo
if ! grep -q "^deb .*http.kali.org/kali kali-rolling" /etc/apt/sources.list; then
    echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
    echo "Added Kali repo to /etc/apt/sources.list"
else
    echo "Kali repo already present in sources.list"
fi

# 2. Import Kali GPG key
echo "Importing Kali Linux GPG key..."
curl -fsSL https://archive.kali.org/archive-key.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kali-archive-keyring.gpg

# 3. Add APT pinning
KALI_PREF_FILE="/etc/apt/preferences.d/kali.pref"
if [ ! -f "$KALI_PREF_FILE" ]; then
    echo "Creating APT pinning file..."
    sudo tee "$KALI_PREF_FILE" > /dev/null <<EOF
Package: *
Pin: release o=Kali
Pin-Priority: 50
EOF
else
    echo "APT pinning already exists at $KALI_PREF_FILE"
fi

# 4. Update package lists
echo "Updating package lists..."
sudo apt update

echo "✅ Kali repo added safely with pinning!"
echo "ℹ️  To install tools: sudo apt install -t kali-rolling <package>"
