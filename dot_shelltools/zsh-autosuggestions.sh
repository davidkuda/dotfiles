if ! [ -d $(brew --prefix)/share/zsh-autosuggestions/ ]; then
    return
fi
bindkey '^y' autosuggest-accept
