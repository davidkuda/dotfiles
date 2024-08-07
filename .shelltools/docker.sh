alias d='docker'
alias dps='docker ps -a | less -S'
alias dx='docker exec -ti'
alias dr='docker run --rm -ti'
alias dl='docker logs'


# docker compose
alias dc='docker compose'
alias dcu='docker compose up'
alias dcud='docker compose up --detach'
alias dcd='docker compose down'
alias dcl='docker compose logs'


# docker swarm

# docker stack ps actives
function dsa {
    stack_name=$1
    docker stack ps $stack_name \
        --filter desired-state=running \
        --filter desired-state=ready
}
