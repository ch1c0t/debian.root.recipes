directory "#{HOME}/.config/tmux"

remote_file "#{HOME}/.config/tmux/tmux.conf" do
  source 'tmux.conf'
end
