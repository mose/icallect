# encoding: utf-8
require 'minitest/autorun'
require_relative 'helpers.rb'
require_relative '../lib/icallect/event.rb'

describe Icallect::Event do

  describe "initialize the event object" do
    before do
      @event = Icallect::Event.new({
        title: "title",
        summary: "Sumary",
        date_start: DateTime.new(2013,02,27,18,30,00),
        date_end: DateTime.new(2013,02,27,21,30,00),
        timezone: "UTC"
      })
    end

    it "has the good title" do
      @event.title.must_equal "title"
    end
    it "has the good start date" do
      @event.date_start.must_equal DateTime.new(2013,02,27,18,30,00)
    end
    it "has the good end date" do
      @event.date_end.must_equal DateTime.new(2013,02,27,21,30,00)
    end
    it "has the good timezone" do
      @event.timezone.must_equal "UTC"
    end
   
  end

end