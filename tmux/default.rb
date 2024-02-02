directory "#{HOME}/.config/tmux"

remote_file "#{HOME}/.config/tmux/tmux.conf" do
  source 'tmux.conf'
end

remote_directory "#{HOME}/.config/tmux/scripts" do
  source 'scripts'
end
