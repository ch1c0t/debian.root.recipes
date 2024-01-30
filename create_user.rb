USER ||= ENV['MUSER']

module Default
  def self.home
    struct = Etc.getpwnam USER
    struct.nil? ? "/home/#{USER}" : struct.dir
  end
end

HOME = ENV['MUSER_HOME']
HOME = Default.home if (HOME.nil? or HOME.empty?)

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
