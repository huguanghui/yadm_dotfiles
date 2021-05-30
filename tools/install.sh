#!/bin/sh

set -o nounset

operate_type="ubuntu"

[ "$(uname)" = "Dawin" ] && operate_type="mac"
[ -n "$(cat /etc/os-release | grep "Ubuntu")" ] && operate_type="ubuntu"
[ -f "/etc/arch-release" -o -f "/etc/artix-release" ] && operate_type="arch"

echo "operate_type=${operate_type}"

install_by_apt() {
    echo "install by apt"
    sudo apt install -y zsh tmux ranger lazygit silversearcher-ag
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
