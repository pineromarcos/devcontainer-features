
#!/bin/sh
set -e

echo "Installing OhMyZsh..."

ZSH_THEME=${THEME:-"agnoster"}

apk add --no-cache \
  openssh-client \
  git \
  zsh \
  zsh-vcs \
  curl \
  wget \
  ncurses

if [ $USERNAME = "root" ]; then
  echo "Installing OhMyZSH on root"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  USER_LOCATION="/root"
else
  echo "Installing OhMyZSH on $USERNAME"
  su - "$USERNAME" -c "sh -c $(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true
  USER_LOCATION="/home/$USERNAME"
fi

git clone https://github.com/zsh-users/zsh-autosuggestions.git $USER_LOCATION/.oh-my-zsh/custom/plugins/zsh-autosuggestions

sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"${ZSH_THEME}\"/g" $USER_LOCATION/.zshrc
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/g' $USER_LOCATION/.zshrc

echo "OhMyZsh Installed"