# encoding: utf-8
require 'minitest/autorun'
require_relative 'helpers.rb'
require_relative '../lib/icallect/config.rb'

describe "Icallect::Event" do
  before do
    ENV["CONFIG_FILE"] = "/tmp/icallect-test.yml"
    FileUtils.rm(ENV["CONFIG_FILE"]) if File.file?(ENV["CONFIG_FILE"])
  end

  describe :setup do
    it "creates a default config file if not found" do
      config = Icallect::Config.new
      config.configfile.must_equal ENV["CONFIG_FILE"]
      File.file?(ENV["CONFIG_FILE"]).must_equal true
    end
  end
  
  it "has a feeds config param" do
    config = Icallect::Config.new
    config.feeds.wont_be_nil
    config.feeds.size.must_equal 1
  end

  it "persists a feed to config file" do
    config = Icallect::Config.new
    config.add("anything")
    config.feeds.size.must_equal 2
    config2 = Icallect::Config.new
    config2.feeds.must_include "anything"
  end

end