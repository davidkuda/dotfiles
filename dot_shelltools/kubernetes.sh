autoload -Uz compinit
compinit

# https://kubernetes.io/docs/reference/kubectl/generated/kubectl_completion/
source <(kubectl completion zsh)

alias k=kubectl

alias kx='kubectl exec'
alias kxi='kubectl exec -ti'

alias kpf='kubectl port-forward'
