if ! [ -d $HOME/.shelltools/zsh-histdb/ ]; then
    return
fi

source $HOME/.shelltools/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook
source $HOME/.shelltools/zsh-histdb/histdb-interactive.zsh
bindkey '^r' _histdb-isearch
