require 'socket'

server = TCPServer.open(30000)

loop do
    Thread.start(server.accept) do |client|
        client.puts Time.now.ctime
        client.puts "close"
        client.close
    end
end