
#!/bin/sh
set -e

echo "Installing OhMyZsh..."

ZSH_THEME=${THEME:-"agnoster"}

apk add --no-cache \
  git \
  zsh \
  curl \
  wget \
  ncurses

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"${ZSH_THEME}\"/g" ~/.zshrc
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' ~/.zshrc

echo "OhMyZsh Installed"