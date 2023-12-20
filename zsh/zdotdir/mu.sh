function mu {
  cd /etc/mu/recipes
  MUSER=$1 mitamae local user.rb
}

function execute-mitamae-recipe {
  cd ~/recipes

  local file
  file=$(rg --files *.rb | fzf)

  if [ -n "$file" ]; then
    mitamae local "$file"
    zle accept-line
  fi
}

zle -N execute-mitamae-recipe
bindkey '\em' execute-mitamae-recipe
