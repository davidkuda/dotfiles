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
	build-essential \
	xclip


# TODO: is zsh installed? do we need to chsh?


# HomeBrew / LinuxBrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


mkdir -p $HOME/.shelltools
PLUGINSDIR=$HOME/.shelltools/zsh-plugins.sh


brew install ripgrep
brew install sqlite
brew install yq
brew install git-delta


brew install direnv
echo 'eval "$(direnv hook zsh)"' >> $PLUGINSDIR


brew install zoxide
echo 'eval $(zoxide init zsh)' >> $PLUGINSDIR


brew install fzf
echo 'source <(fzf --zsh)' >> $PLUGINSDIR


brew install zsh-history-substring-search
echo 'source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh' >> $PLUGINSDIR


brew install --quiet zsh-syntax-highlighting
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $PLUGINSDIR


brew install --quiet zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $PLUGINSDIR


git clone git@github.com:larkery/zsh-histdb.git $HOME/.shelltools/zsh-histdb
