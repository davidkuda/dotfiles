
# This function will be called every time the directory changes:
function chpwd() {
  tmux rename-window $(basename $(pwd))
}

tmux_ssh_window_title() {
  tmux rename-window ssh/$1
  ssh $@
}
alias ssh=tmux_ssh_window_title
