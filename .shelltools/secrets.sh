export NUGET_PAT='secret'
export NUGET_ENDPOINT=$(jq -n --from-file ~/.oh-my-zsh/custom/az.jq --arg NUGET_PAT $NUGET_PAT --compact-output)
export VSS_NUGET_EXTERNAL_FEED_ENDPOINTS=$NUGET_ENDPOINT
