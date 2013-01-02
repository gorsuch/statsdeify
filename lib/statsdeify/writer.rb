module Statsdeify
  class Writer
    attr_accessor :url

    def initialize(url)
      self.url = url
    end

    def socket
      unless @socket
        uri = URI.parse(url)
        @socket = UDPSocket.new
        @socket.connect(uri.host, uri.port)
      end
      @socket
    end

    def puts(measurement)
      socket.write(measurement.to_s, 0) 
    end
  end
end
