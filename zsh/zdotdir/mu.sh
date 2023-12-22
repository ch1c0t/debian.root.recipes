function mu {
  cd /etc/mu/recipes
  MUSER=$1 mitamae local user.rb
}

function execute-mitamae-recipe {
  local dir
  if [[ $UID == 0 ]]; then
    dir=/etc/mu/recipes
  else
    dir=~/recipes
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
