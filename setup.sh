#!/bin/bash

echo "🔄 Updating and upgrading packages..."
apt update && apt upgrade -y && apt autoremove -y && apt clean

echo "📁 Setting up storage..."
termux-setup-storage -y

echo "🛠️ Installing essential packages..."
apt install termux-api -y
apt install wget -y
apt install curl -y
apt install git -y
apt install python -y
apt install openjdk-17 -y
apt install ruby -y

echo "🔧 Installing and setting up Zsh..."
apt update && apt install zsh -y
echo "chsh -s zsh" >> ~/.bashrc
echo "chsh -s zsh" >> ~/.profile
chsh
zsh
echo "✅ Current shell: $SHELL"

echo "🎨 Installing Oh My Zsh..."
git clone https://github.com/ohmyzsh/ohmyzsh.git
cd ohmyzsh/tools
./install.sh
cd ~

echo "🔌 Installing Zsh plugins..."
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting

echo "🔧 Enabling plugins in .zshrc..."
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete fast-syntax-highlighting)/' ~/.zshrc

echo "📦 Displaying all installed packages and their versions:"
dpkg -l | grep -E 'termux-api|wget|curl|git|python|openjdk-17|ruby|zsh' | awk '{print $2 " - " $3}'

echo "✅ All set! Reload with: source ~/.zshrc or restart Termux."
