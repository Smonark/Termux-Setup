#!/bin/bash
# bWAPP automated setup script for Termux
# Save this as install_bwapp.sh

# Create Server directory
cd /storage/downloads/Acode
mkdir -p Server
cd

# Clone tamp repo
git clone https://github.com/1Tech-X/Tamp.git
cd Tamp

# Run tamp install script (manual mode)
bash install.sh <<EOF
2
/data/data/com.termux/files/home/storage/downloads/Acode/Server
EOF

# Start and stop tamp to test
tamp -start
sleep 2
tamp -stop

# Fix tamp errors if needed
tamp -r

# Download and extract bWAPP
cd /storage/downloads/Acode/Server
wget https://sourceforge.net/projects/bwapp/files/bWAPP/bWAPPv2.2/bWAPPv2.2.zip/download -O bWAPP.zip
unzip -o bWAPP.zip

# Edit settings.php
cd bWAPP/admin
sed -i "s/\$db_server = 'localhost';/\$db_server = '127.0.0.1:3306';/" settings.php
echo "\$db_password = 'bWAPP';" >> settings.php

echo "✅ bWAPP automated install completed!"
echo "👉 Open browser at http://localhost:8080/bWAPP/install.php to finish setup."
echo "😭 any error show if you see manual installation point 9,10 or 11 ."
