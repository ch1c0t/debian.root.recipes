function mu {
  cd ~/recipes
  MUSER=$1 MUSER_HOME=$2 mitamae local user.rb
}

function execute-mitamae-recipe {
  local dir
  if [[ $UID == 0 ]]; then
    dir=~/recipes
  else
    if [[ -d "$HOME/user.recipes" ]]; then
      dir=~/user.recipes
    else
      dir=~/recipes
    fi
  fi; cd "$dir"

  local file
  file=$(rg --files *.rb | fzf)

  if [ -n "$file" ]; then
    mitamae local "$file"
    zle accept-line
  fi
}

zle -N execute-mitamae-recipe
bindkey '\em' execute-mitamae-recipe
