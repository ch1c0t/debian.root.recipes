USER = u = ENV['MUSER']
HOME = "/home/#{u}"

user :create do
  username u
  home HOME
  create_home true
  shell '/bin/zsh'
end

directory "#{HOME}/.config" do
  owner USER
  group USER
end

remote_file "#{HOME}/.zshenv" do
  source 'zsh/zdotdir/.zshenv'
  owner u
  group u
end

remote_directory "#{HOME}/.config/zsh" do
  source 'zsh/zdotdir'
  owner u
  group u
end
