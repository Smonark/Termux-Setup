#!/bin/bash

echo "🔄 Updating and installing essentials..."
apt update && apt upgrade -y
apt install git python figlet -y
pip install lolcat

echo "📥 Cloning Termux banner..."
cd
git clone https://github.com/Smonark/Termux-Banner-.git

echo "⚙️ Updating .zshrc..."
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="jonathan"/' ~/.zshrc
echo -e "\n# Custom Banner and Username\nsource ~/Termux-Banner-/banner.sh\nexport USER=\"myusername\"" >> ~/.zshrc

echo "🎨 Updating jonathan.zsh-theme..."
sed -i 's/\${PR_CYAN}%(!.%SROOT%s.%n)\${PR_GREY}@\${PR_GREEN}%m:%l\\/\\${PR_CYAN}%(!.%SROOT%s.Shadow)\${PR_GREY}@\${PR_MAGENTA}WINDOWS:%l\\/' ~/.oh-my-zsh/themes/jonathan.zsh-theme

echo "🔄 Reloading Zsh..."
source ~/.zshrc

echo "✅ Termux customization complete!"
