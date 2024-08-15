# --- aliases --- #

# Varia
alias n='nvim .'
alias v=nvim
alias ohmy='~/.oh-my-zsh/custom/'
alias ccp='xclip -selection clipboard'
# alias ls=lsd
alias conda=$HOME/miniforge3/bin/conda

alias la='ls -lisah'

# confs
alias confz='nvim $HOME/.local/share/chezmoi/'
alias conft='nvim $HOME/.local/share/chezmoi/dot_tmux.conf'
alias confn='nvim $HOME/.local/share/chezmoi/dot_config/nvim/'
alias chere='chezmoi apply && exec zsh'

# --- env vars --- #
export EDITOR=vim
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:/usr/local/go/bin
export DELTA_PAGER='less -R'
export C='/mnt/c/Users/david.kuda/Desktop/'

