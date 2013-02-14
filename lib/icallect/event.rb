module Icallect
  class Event

    attr_reader :title, :summary, :date_start, :date_end, :timezone

    def initialize(content)
      @date_start = content[:date_start]
      @date_end = content[:date_end]
      @timezone = content[:timezone]

      @location = nil
      @geo_lat = nil
      @geo_long = nil

      @title = content[:title]
      @summary = nil
      @url = nil

      @created = nil
      @modified = nil
    end

  end
end