require "icalendar"

module Icallect
  class Feed

    def initialize
      @url = nil
    end

    def load(file)
      f = File.open file
      meat = Icalendar.parse f
    end
  
  end
end
