# encoding: utf-8
require 'minitest/autorun'
require_relative 'helpers.rb'
require_relative '../lib/icallect/feed.rb'

describe "Icallect::Feed" do

  it "load simple file and have right number of events" do
    feed = Icallect::Feed.new
    f = feed.load File.expand_path("../sample/webcal_simple.ics",__FILE__)
    f.first.events.size.must_equal 1
    f = feed.load File.expand_path("../sample/webcal_multi.ics",__FILE__)
    f.first.events.size.must_equal 11
  end


end