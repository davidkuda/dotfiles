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

function pyfmt() {
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "ruff format $1:"
    uv run ruff format $1
    echo ""
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "ruff check --select I --fix $1:"
    uv run ruff check --select I --fix $1
}
