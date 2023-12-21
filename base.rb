directory "#{HOME}/.config"
directory "#{HOME}/.local"
directory "#{HOME}/.cache"

unless USER == 'root'
  remote_directory "#{HOME}/recipes" do
    source '.'
  end
end
