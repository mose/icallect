require "icalendar"

module Icallect
  class Feed

    def initialize
      @url = nil
      @events = []
    end

    def load(file)
      f = File.open file
      Icalendar.parse f
    end
  
  end
end
