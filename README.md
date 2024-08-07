idea how to setup:

```sh
sh -c $(curl -fsSL https://raw.githubusercontent.com/davidkuda/dotfiles/main/setup.sh)
```

# Cool CLI Tools:

- HistDB: https://github.com/larkery/zsh-histdb
- OhMyPosh: https://ohmyposh.dev/
- ZSH AutoSuggestions: https://github.com/zsh-users/zsh-autosuggestions
- ZSH SyntaxHighlighting: https://github.com/zsh-users/zsh-syntax-highlighting
- delta: https://github.com/dandavison/delta
- ripgrep

# apt installs:

```sh
sudo apt update
sudo apt install \
    diff-so-fancy \
    figlet \
    fzf \
    git \
    htop \
    jq \
    lsd \
    miniforge \
    ncdu \
    neovim \
    tmux \
    tree \
    zoxide
```

# Brew Installs

```sh
# GitHub cli
# https://cli.github.com/
brew install gh

brew install coreutils
brew install diff-so-fancy
brew install graphviz
brew install ffmpeg
brew install direnv
brew install jq
brew install --cask miniconda
brew install awscli
brew install zoxide
brew install neofetch
brew install lsd
brew install neovim
brew install tmux

# Apps
brew install --cask karabiner-elements
brew install --cask alt-tab
brew install --cask anki
```

# tmux ideas

```sh
#!/bin/zsh

# Get the current session name
CURRENT_SESSION=$(tmux display-message -p '#S')

# Define the name of the popup session
POPUP_SESSION="${CURRENT_SESSION}-popup"

if [[ $CURRENT_SESSION == *-popup* ]]; then
  # If inside a popup session, detach to close it
  tmux detach-client
else
  # If not in a popup session, open the popup
  tmux display-popup -d "$(tmux display-message -p '#{pane_current_path}')" -xC -yC -w 92% -h 92% -E "tmux attach-session -t $POPUP_SESSION || tmux new-session -s $POPUP_SESSION"
fi
```
