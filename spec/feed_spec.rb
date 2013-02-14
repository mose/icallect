# encoding: utf-8
require 'minitest/autorun'
require_relative 'helpers.rb'
require_relative '../lib/icallect/feed.rb'

describe "Icallect::Feed" do

  it "load file" do
    feed = Icallect::Feed.new
    f = feed.load File.expand_path("../sample/webcal_simple.ics",__FILE__)
    ap f
  end

end