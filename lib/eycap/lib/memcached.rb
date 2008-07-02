require 'socket'

module Capistrano
  class Memcached

    #called in capistrano recipie like so:
    # Capistrano::Memcached.flush(11211,11212) or Capistrano::Memcached.flush(11211) etc
    def self.flush(*ports)
      ports = [ 11211 ] if ports.empty? #default value
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
      rescue
        puts "an error occured while flushing memcached."
    end
  end

end
