# tmux

```sh
# start tmux at the beginning:
if [[ -z $TMUX ]]
then
    tmux new-session -A -s "$USER"
fi


# start tmux in vscode:
if [[ $TERM_PROGRAM != "tmux" ]]; then
    if [[ $VSCODE_INJECTION ]]; then
        tmux new-session -A -s $(pwd | xargs basename)
    else
        tmux new-session -A -s "$USER"
    fi
fi


# open a popup via shell:
function tmux_toggle_popup {
  # Get the current session name
  CURRENT_SESSION=$(tmux display-message -p '#S')

  # Define the name of the popup session
  POPUP_SESSION="${CURRENT_SESSION}-popup"

  if [[ $CURRENT_SESSION == *-popup* ]]; then
    # If inside a popup session, detach to close it
    tmux detach-client
  else
    # If not in a popup session, open the popup
    tmux display-popup -d \
      "$(tmux display-message -p '#{pane_current_path}')" \
      -xC -yC -w 92% -h 92% \
      -E "tmux attach-session -t $POPUP_SESSION || tmux new-session -s $POPUP_SESSION"
  fi
}

# can you open a function via key press? this attempt doesn't work ...
bindkey '^a' tmux_toggle_popup


# rename sessions based on directory:
tmux_change_window_name_full_path() {
  if command -v curl > /dev/null 2>&1; then
    # Check if the path starts with the home directory
    if [ "${PWD#"$HOME"}" != "$PWD" ]; then
        # Replace home directory with ~
        WINDOW_NAME="~${PWD#$HOME}"
    else
        # Leave the path unchanged
        WINDOW_NAME="$PWD"
    fi

    tmux rename-window $WINDOW_NAME
  fi
}

tmux rename-window $(basename $(pwd))

# zsh specific: on each cd, run the function:
function chpwd() {
  tmux rename-window $(basename $(pwd))
}
```
