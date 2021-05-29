# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 环境配置
source ~/.config/zsh/env.zsh
source ~/.config/zsh/aliases.zsh


# oh-my-zsh 的安装目录
export ZSH="/home/hgh/.oh-my-zsh"

# 配置主题
# ZSH_THEME="ys"
ZSH_THEME="powerlevel10k/powerlevel10k"

# 插件管理
plugins=(
    pm
    git
    zsh-autosuggestions
    vi-mode
    colored-man-pages
)

# oh-my-zsh 初始化
source $ZSH/oh-my-zsh.sh

[[ -s /home/hgh/.autojump/etc/profile.d/autojump.sh ]] && source /home/hgh/.autojump/etc/profile.d/autojump.sh
source /home/hgh/Tools/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# PM functions
source /home/hgh/.pm/pm.zsh
alias pma="pm add"
alias pmg="pm go"
alias pmrm="pm remove"
alias pml="pm list"
# end PM

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
