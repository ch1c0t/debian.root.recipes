require 'socket'

socket = UNIXSocket.new '/tmp/clipboard.socket'
socket.write STDIN.read + "\n"
socket.close
