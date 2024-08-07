echo 'adding stuff to your .zshrc'

echo '\n>>> davidkuda'
curl -fsSL https://raw.githubusercontent.com/davidkuda/dotfiles/main/.zshrc >> $HOME/.zshrc
echo '<<< davidkuda\n'


# tmux
echo 'Do you want to download .tmux.conf and write to $HOME/.tmux.conf? (type yes for approval)'
echo '(Warning, this will overwrite an existing file)'

read tmux

if [[ $tmux == "yes" ]]
then
    curl -fsSL https://raw.githubusercontent.com/davidkuda/dotfiles/main/.tmux.conf --output $HOME/.tmux.conf
fi
