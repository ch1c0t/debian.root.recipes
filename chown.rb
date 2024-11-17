unless USER == 'root'
  execute "chown -R #{USER}:#{USER} #{HOME}"
end
