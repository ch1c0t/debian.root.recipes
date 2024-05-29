require 'socket'
require 'open3'

file = '/tmp/clipboard.socket'
File.unlink file if File.exist? file
server = UNIXServer.new file
File.chmod 0660, file

loop do
  socket = server.accept
  line = socket.readline.chomp
  spawn "echo -n '#{line}' | DISPLAY=#{ENV['DISPLAY']} xsel -i"
rescue EOFError
ensure
  socket.close if socket
end
