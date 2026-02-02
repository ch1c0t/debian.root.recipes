USER = 'root'

include_recipe 'dns'
include_recipe 'apt'
include_recipe 'console'
include_recipe 'security'
include_recipe 'user'

execute 'chsh -s /bin/zsh'
