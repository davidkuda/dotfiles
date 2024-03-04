alias ohmy='~/.oh-my-zsh/custom/'
alias ccp='xclip -selection clipboard'
alias v=nvim
alias dc=docker-compose
unalias gm
alias gm='git commit --message'
alias ls=lsd

eval "$(zoxide init zsh)"

bindkey -v
bindkey '^x^x' edit-command-line

export EDITOR=vim

if [[ -z $TMUX ]]
then
    tmux new-session -A -s "$USER"
fi

# MiniForge:
export alias conda=/home/davidkuda/miniforge3/bin/conda

# Go:
export PATH=$PATH:/usr/local/go/bin
