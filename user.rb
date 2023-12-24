USER ||= ENV['MUSER']
HOME = USER == 'root' ? '/root' : "/home/#{USER}"

unless USER == 'root'
  user :create do
    username USER
    home HOME
    create_home true
    shell '/bin/zsh'
  end

  directory HOME do
    mode '700'
  end
end

include_recipe 'base'
include_recipe 'zsh'
include_recipe 'tmux'
include_recipe 'i3' unless USER == 'root'
include_recipe 'git'
include_recipe 'vim'

unless USER == 'root'
  execute "chown -R #{USER}:#{USER} #{HOME}"
end
