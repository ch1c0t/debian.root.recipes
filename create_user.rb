USER ||= ENV['MUSER']

def default_home
  struct = Etc.getpwnam USER
  struct.nil? ? "/home/#{USER}" : struct.dir
end

specified_home = ENV['MUSER_HOME']
HOME = specified_home or default_home

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
