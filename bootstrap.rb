USER = 'root'

include_recipe 'apt'
include_recipe 'user'

execute 'chsh -s /bin/zsh'
