USER ||= ENV['MUSER']

module Default
  def self.home
    struct = Etc.getpwnam USER
    struct.nil? ? "/home/#{USER}" : struct.dir
  end
end

specified_home = ENV['MUSER_HOME']
HOME = specified_home || Default.home

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
