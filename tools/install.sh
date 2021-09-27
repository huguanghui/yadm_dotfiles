#!/bin/sh

set -o nounset

operate_type="ubuntu"

[ "$(uname)" = "Dawin" ] && operate_type="mac"
[ -n "$(cat /etc/os-release | grep "Ubuntu")" ] && operate_type="ubuntu"
[ -f "/etc/arch-release" -o -f "/etc/artix-release" ] && operate_type="arch"

echo "operate_type=${operate_type}"

install_by_apt() {
    echo "install by apt"
    sudo apt install -y zsh tmux ranger lazygit silversearcher-ag autojump 
    sudo apt install -y tldr cloc dstat glances ncdu
    sudo apt install -y variety compton
}

install_by_pacman() {
    echo "install by pacman"
}

if [ "${operate_type}" = "ubuntu" ]; then
    install_by_apt
elif [ "${operate_type}" = "arch" ]; then
    install_by_pacman
else
    echo "Unsupport operate"
fi

if [ ! -d "$HOME/.xmake" ]
then
  bash <(curl -fsSL https://xmake.io/shget.text)
fi

if [ ! -d "$HOME/.fzf" ]
then
    git clone --depth 1 https://hub.fastgit.org/junegunn/fzf.git ~/.fzf
    source ~/.fzf/install
fi

mkdir -p $HOME/download

#wget https://sourceforge.net/projects/cscope/files/cscope/v15.9/cscope-15.9.tar.gz .

git config --global color.ui true
git config --global color.status auto
git config --global core.editor nvim
git config --global commit.template ~/.config/.gittemplate
