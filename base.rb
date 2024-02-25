directory "#{HOME}/.config"
directory "#{HOME}/.local"
directory "#{HOME}/.cache"

unless USER == 'root'
  remote_directory "#{HOME}/recipes" do
    source '.'
  end

  directory "#{HOME}/.local/bin"
  directory "#{HOME}/.config/systemd/user"
end
