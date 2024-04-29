# app.rb
require 'socket'

server = TCPServer.new('0.0.0.0', 81)

loop do
  client = server.accept
  client.puts "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
  client.puts "Hello, world!"
  client.close
end
