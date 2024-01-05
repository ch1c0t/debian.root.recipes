USER ||= ENV['MUSER']
HOME = USER == 'root' ? '/root' : "/home/#{USER}"

unless USER == 'root'
  user :create do
    username USER
    home HOME
    create_home true
    shell '/bin/zsh'
  end

  directory HOME do
    mode '700'
  end
end
