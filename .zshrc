alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
alias unproxy="unset all_proxy"
alias mirrorbrew="export HOMEBREW_BREW_GIT_REMOTE='https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git' HOMEBREW_CORE_GIT_REMOTE='https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git' HOMEBREW_BOTTLE_DOMAIN='https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles'"
alias unmirrorbrew="unset HOMEBREW_BREW_GIT_REMOTE HOMEBREW_CORE_GIT_REMOTE HOMEBREW_BOTTLE_DOMAIN"

alias hs="http-server"
alias cat="bat"
alias ls="exa"
alias rm="rip"
alias cp="xcp"
alias cd="z"
alias find="fd"
alias top="bottom"
alias pn="pnpm"

# Homebrew Mirror
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"

# eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"

export BAT_THEME="Dracula"
# source /Users/caoxm/.config/broot/launcher/bash/br

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
# [ -s "/Users/caoxm/.bun/_bun" ] && source "/Users/caoxm/.bun/_bun"

source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "plugins/git", from:oh-my-zsh
# zplug "z-shell/F-Sy-H", defer:2
# zplug "zsh-users/zsh-autosuggestions", defer:2
# zplug "zdharma-continuum/fast-syntax-highlighting", defer:2
# zplug "marlonrichert/zsh-autocomplete", defer:2

# Load theme file
zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
