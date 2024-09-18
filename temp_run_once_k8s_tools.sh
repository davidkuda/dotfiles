if ! command -v brew &> /dev/null; then
    echo 'you need to install brew to setup k8s apps. exiting!'
    return
fi

brew install stern
brew install helm
