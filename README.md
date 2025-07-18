# kali-buntu
Easily add Kali Linux rolling repo to Ubuntu with safe apt pinning — install Kali tools on Ubuntu without breaking your system!
# 🚀 **kali-buntu** 🚀

> **Add Kali Linux Rolling Repository to Ubuntu safely with pinning**  
> _Install Kali tools on Ubuntu without breaking your system!_

---

<p align="center">
  <img src="https://cdn.dribbble.com/users/1186264/screenshots/6156727/dribbble_pentesting_3d.gif" alt="3D pentesting animation" width="320"/>
</p>

---

## ✨ Features ✨

| What it does               | Why you'll ❤️ it                                  |
|---------------------------|-------------------------------------------------|
| 🐧 Adds Kali rolling repo  | Seamlessly add Kali tools on your Ubuntu system |
| 🔐 Imports Kali GPG key    | Secure package verification                      |
| 🛡️  Sets up apt pinning     | Protect your system from unwanted upgrades      |
| 🔄 Auto updates package list | Ready to install Kali tools instantly           |
| ⚡ Idempotent & safe        | Run anytime without duplicates                    |

---

## 🛠️ Usage

```bash
# Step 1: Download
wget https://github.com/yourusername/kali-buntu/raw/main/kali-buntu.sh

# Step 2: Make executable
chmod +x kali-buntu.sh
# step 3:
sudo apt-get install dos2unix
# setep 4:
dos2unix kali-buntu.sh

you will see something like this dos2unix: converting file kali-buntu.sh to Unix format...

# Step 5: Run it!
./kali-buntu.sh
