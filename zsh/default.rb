remote_file "#{HOME}/.zshenv" do
  source 'zdotdir/.zshenv'
  owner USER
  group USER
end

remote_directory "#{HOME}/.config/zsh" do
  source 'zdotdir'
  owner USER
  group USER
end

directory "#{HOME}/.local/share/zsh" do
  owner USER
  group USER
end

directory "#{HOME}/.cache/zsh" do
  owner USER
  group USER
end
