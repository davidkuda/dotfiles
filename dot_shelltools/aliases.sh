alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias -g L='| less -S'
alias -g G='| grep -i'

alias ls='lsd'
alias la='ls -lAh'

alias n='nvim .'
alias v=nvim
alias ohmy='~/.oh-my-zsh/custom/'
alias ccp='xclip -selection clipboard'

# confs
alias chere='chezmoi apply && exec zsh'
alias ccd='chezmoi cd'
alias confz='nvim $HOME/.local/share/chezmoi/'
alias conft='nvim $HOME/.local/share/chezmoi/dot_tmux.conf'
alias confn='nvim $HOME/.local/share/chezmoi/dot_config/nvim/'
