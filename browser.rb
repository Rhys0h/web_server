require 'socket'

request = "GET /articles/rack#sinatra HTTP/1.0\r\n\r\n"

socket = TCPSocket.open("https://devcenter.heroku.com", 80)

socket.print(request)
response = socket.read
headers,body = response.split("\r\n\r\n", 2)
print body