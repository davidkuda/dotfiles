alias g=git

alias gs='git status'
alias gst='git status'

alias ga='git add'

alias grs='git restore --staged'

alias gb='git branch'

alias gc='git commit'
alias gca='git commit --amend --no-edit'

alias gd='git diff'
alias gds='git diff --staged'

alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gcd='git checkout develop'

alias gl='git pull'
alias gp='git push'


# gm == git commit --message "..."
function gm {
    # $@ represents "all arguments"
    commit_msg=$@
    git commit --message "$commit_msg"
}

# gbdc -> git branch delete current
gbdc() {
  current_branch=$(git branch --show-current)

  protected_branches="develop test master"

  for branch in $protected_branches; do
    if [ "$current_branch" = "$branch" ]; then
      echo "Cannot delete the $current_branch branch. It is a protected branch!"
      exit 1
    fi
  done

  # Ask for user confirmation
  echo "You are about to switch to the develop branch and delete the current branch \"$current_branch\"."
  echo "Are you sure you want to proceed? (y/n)"
  read -r confirmation

  if [ "$confirmation" != "y" ] && [ "$confirmation" != "Y" ]; then
    echo "Operation cancelled."
    exit 1
  fi

  git checkout develop

  if [ $? -ne 0 ]; then
    echo "Failed to switch to the develop branch."
    return 1
  fi

  git branch -d "$current_branch" 2>/dev/null || git branch -D "$current_branch"
}

# gbcp -> git branch cp -> Copy a branch to your clipboard
function gbcp {
    branches=$(git branch | cat -n)
    echo $branches
    echo "which line nr do you want to copy?"
    read line_nr
    branch=$(echo $branches | sed -n "${line_nr}p" | awk '{ print $2 }' | tr -d '\n')
    echo $branch | xclip -selection clipboard
    echo "Copied \"$branch\" to your clipboard."
}

# gcol -> git checkout to line
function gcol {
  gb | cat -n
  echo "Enter number of branch to checkout to:"
  read line_nr
  branch=$(gb | cat -n | sed -n "${line_nr}p" | awk '{ print $2 }' | tr -d '\n')
  gco $branch
}

# gcobr -> git checkout branch remote
function gcobr () {
  gb -r | cat -n
  echo "Enter number of branch to checkout to:"
  read line_nr
  branch=$( \
    gb -r | cat -n | \
    sed -n "${line_nr}p" | \
    awk '{ print $2 }' | \
    sed -e "s/^origin\///" \
  )
  echo "Checking out to branch \"$branch\"\n"
  gco $branch
}

#gbdlr <branch_name> -> git branch delete local remote
function gbdlr {
  git branch -d $1
  git push --delete $1
}
