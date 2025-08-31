# TODO:
# - starship
# - neovim
# - lsd
# - jq


# TODO: Check whether it's a debian OS before executing apt ...
# or create a separate file for brew and one for apt.
# (brew is not available on raspberry pi.)
sudo apt update
sudo apt install -y \
	arandr \
	autorandr \
	build-essential \
	build-essential \
	flameshot \
	git \
	i3status \
	jq \
	numlockx
	picom \
	remmina \
	rofi \
	swaylock \
	xclip \


# TODO: is zsh installed? do we need to chsh?


# HomeBrew / LinuxBrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# linuxbrew:
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.shelltools/brew.sh
# Run this command in your terminal to add Homebrew to your PATH:
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"



mkdir -p $HOME/.shelltools
PLUGINSDIR=$HOME/.shelltools/zsh-plugins.sh
PLUGINSFILE=$HOME/.shelltools/zsh-plugins.sh
append() {
  echo $@ >> $PLUGINSFILE
}


brew install ripgrep
brew install sqlite
brew install yq
brew install git-delta
brew install lsd


# starship:
brew install starship
eval "$(starship init zsh)"


brew install direnv
append "# direnv:"
append 'eval "$(direnv hook zsh)"'
append "\n"


brew install zoxide
append "# zoxide:"
append 'eval $(zoxide init zsh)'
append "\n"


brew install fzf
$(brew --prefix)/opt/fzf/install
append "# fzf:"
append 'source <(fzf --zsh)'
append "\n"


brew install zsh-history-substring-search
append "# zsh-history-substring-search:"
append 'source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh'
append "\n"


brew install --quiet zsh-syntax-highlighting
append "# zsh-syntax-highlighting:"
append "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
append "\n"


brew install --quiet zsh-autosuggestions
append "# zsh-syntax-autosuggestions:"
append "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
append "\n"


git clone git@github.com:larkery/zsh-histdb.git $HOME/.shelltools/zsh-histdb
append "# zsh-histdb:"
append source $HOME/.shelltools/zsh-histdb/sqlite-history.zsh
append autoload -Uz add-zsh-hook
append "\n"

