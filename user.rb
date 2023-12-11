USER = u = ENV['MUSER']
HOME = "/home/#{u}"

user :create do
  username u
  home HOME
  create_home true
  shell '/bin/zsh'
end

include_recipe 'base'
include_recipe 'zsh'
include_recipe 'tmux'
include_recipe 'i3'

execute "chown -R #{USER}:#{USER} #{HOME}"
