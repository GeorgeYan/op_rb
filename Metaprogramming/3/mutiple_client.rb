require 'socket'

PORT = 8081
socket = TCPServer.new('0.0.0.0', PORT)

def handle_connection(client)
puts "New client! #{client}"

client.write("Hello from servern")
client.close
end

puts "Listening on #{PORT}. Press CTRL+C to cancel."

while client = socket.accept
Thread.new { handle_connection(client) }
end
