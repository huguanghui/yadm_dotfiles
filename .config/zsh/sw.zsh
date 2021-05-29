#!/bin/sh

install_oh_my_zsh_onubuntu() {
  echo "install_oh_my_zsh_onubuntu"
  bash $HOME/tools/ohmyzsh/install.sh
}

install_oh_my_zsh_onarch() {
  echo "install_oh_my_zsh_onarch"
  bash $HOME/tools/ohmyzsh/install.sh
}

install_oh_my_zsh() {
  [ -n "$(cat /etc/os-release | grep Ubuntu)" ] && install_oh_my_zsh_onubuntu  
  [ -f "/etc/arch-release" ] && install_oh_my_zsh_onarch
  [ -f "/etc/artix-release" ] && install_oh_my_zsh_onarch
}

install_zsh_autosuggestions() {
  git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
}

install_xmake() {
  bash <(curl -fsSL https://xmake.io/shget.text)
}

# oh-my-zsh安装
[ ! -d "$HOME/.oh-my-zsh" ] && install_oh_my_zsh

# zsh_autosuggestions
[ -d "$HOME/.oh-my-zsh/custom/plugins"  ] && \
[ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"  ] && install_zsh_autosuggestions

# xmake 安装
[ ! -d "$HOME/.xmake" ] && install_xmake
