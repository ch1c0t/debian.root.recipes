directory "#{HOME}/.config/tmux"

remote_file "#{HOME}/.config/tmux/tmux.conf" do
  source 'tmux.conf'
end

remote_file "/usr/local/bin/to-left-pane" do
  source 'to-left-pane'
  mode '755'
end

remote_file "/usr/local/bin/to-lower-pane" do
  source 'to-lower-pane'
  mode '755'
end

remote_file "/usr/local/bin/to-upper-pane" do
  source 'to-upper-pane'
  mode '755'
end

remote_file "/usr/local/bin/to-right-pane" do
  source 'to-right-pane'
  mode '755'
end

remote_file "/usr/local/bin/habit-sequence" do
  source 'habit-sequence'
  mode '755'
end
