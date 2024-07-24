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
