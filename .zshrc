for f in $(ls .shelltools); do
    source shelltools/$f
done

bindkey -v
bindkey '^x^x' edit-command-line

eval "$(zoxide init zsh)"

