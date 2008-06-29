require 'socket'

module Capistrano
  class Memcached

    #called in capistrano recipie like so:
    # Memcached.flush(11211,11212) or Memcached.flush(11211) etc
    def self.flush(*ports)
      for port in ports
				socket = TCPSocket.new( '127.0.0.1', port)
				socket.write( "flush_all\n" )
				result =  socket.recv(5)
				if result[0..1] == "OK"
				  puts "Success: memcached has been flushed"
				elsif result == "ERROR"
				 puts "Failure: memcached was not flushed."
				else
				 puts "Check to see if memcached was flushed."
				end
				socket.close
      end
    end
  end

end
