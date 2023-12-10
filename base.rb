directory "#{HOME}/.config"
directory "#{HOME}/.local"
directory "#{HOME}/.cache"

remote_directory "#{HOME}/recipes" do
  source '.'
end
