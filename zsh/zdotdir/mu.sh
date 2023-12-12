function mu {
  cd /etc/mu/recipes
  MUSER=$1 mitamae local user.rb
}

bindkey -s '\em' 'cd ~/recipes; ruby $(rg --files *.rb | fzf)^M'
