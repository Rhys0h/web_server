require 'socket'

server = TCPServer.open(2000)
loop {
	client = server.accept
	client.puts(Time.now)
	client.puts "Closing connection. See ya!"
	client.close
}