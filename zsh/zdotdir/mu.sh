function mu {
  cd /etc/mu/recipes
  MUSER=$1 mitamae local user.rb
}

function execute-mitamae-recipe {
  cd ~/recipes
  ruby $(rg --files *.rb | fzf)
  zle accept-line
}

zle -N execute-mitamae-recipe
bindkey '\em' execute-mitamae-recipe
