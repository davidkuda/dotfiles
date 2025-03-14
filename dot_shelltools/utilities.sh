# ssh interactive: browse all configured conns and conntect
sshi() {
    conn=$(\
        grep 'Host ' $HOME/.ssh/config \
        | awk '{ print $2 }' \
        | fzf \
    )
    ssh $conn
}

function pretty_path() {
    echo $PATH | tr ':' '\n' | sort
}
