include_recipe 'create_user'
include_recipe 'base'
include_recipe 'zsh'
include_recipe 'tmux'
include_recipe 'i3' unless USER == 'root'
include_recipe 'git'
include_recipe 'vim'
include_recipe 'htop'

unless USER == 'root'
  execute "chown -R #{USER}:#{USER} #{HOME}"
end
