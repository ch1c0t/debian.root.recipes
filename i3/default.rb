remote_file "#{HOME}/.xinitrc" do
  source '.xinitrc'
end

directory "#{HOME}/.config/i3"
directory "#{HOME}/.config/i3status"

remote_file "#{HOME}/.config/i3/config" do
  source 'i3.config'
end

remote_file "#{HOME}/.config/i3status/config" do
  source 'i3status.config'
end
