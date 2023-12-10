USER = u = ENV['MUSER']
HOME = "/home/#{u}"

user :create do
  username u
  home HOME
  create_home true
  shell '/bin/zsh'
end

include_recipe 'base_directories'
include_recipe 'zsh'
