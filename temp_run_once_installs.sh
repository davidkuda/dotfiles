# TODO:
# - histdb
# - starship
# - neovim
# - lsd
# - jq


# TODO: Check whether it's a debian OS before executing apt ...
sudo apt update
sudo apt install -y \
	build-essential \
	xclip


# TODO: is zsh installed? do we need to chsh?


# HomeBrew / LinuxBrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# ripgrep:
brew install ripgrep


# zsh plugins:
mkdir -p $HOME/.shelltools
PLUGINSDIR=$HOME/.shelltools/zsh-plugins.sh

brew install zsh-history-substring-search
echo 'source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh' >> $PLUGINSDIR

brew install --quiet zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $PLUGINSDIR

brew install --quiet zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $PLUGINSDIR

brew install zoxide
echo 'eval $(zoxide init zsh)' >> $PLUGINSDIR

brew install fzf
echo 'source <(fzf --zsh)' >> $PLUGINSDIR
