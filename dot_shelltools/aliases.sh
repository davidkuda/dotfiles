alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ls='lsd'
alias la='ls -lAh'

alias n='nvim .'
alias v=nvim
alias ohmy='~/.oh-my-zsh/custom/'
alias ccp='xclip -selection clipboard'
alias conda=$HOME/miniforge3/bin/conda

# confs
alias confz='nvim $HOME/.local/share/chezmoi/'
alias conft='nvim $HOME/.local/share/chezmoi/dot_tmux.conf'
alias confn='nvim $HOME/.local/share/chezmoi/dot_config/nvim/'
alias chere='chezmoi apply && exec zsh'
