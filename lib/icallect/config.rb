require "yaml"

module Icallect
  class Config

    CONFIG_DEFAULTFILE = File.expand_path("../../../config.yml.defaults",__FILE__)

    attr_reader :feeds

    def initialize
      @__configfile = nil
      @feeds = []
      @values = {}
      setup
    end

    def setup
      FileUtils.mkdir_p(File.dirname(configfile)) unless File.directory?(File.dirname(configfile))
      FileUtils.cp(CONFIG_DEFAULTFILE, configfile) unless File.file?(configfile)
      @values = YAML.load_file(configfile)
      @feeds = @values['feeds']
    end

    def configfile
      @__configfile ||= ENV["CONFIG_FILE"] || File.expand_path("~/.config/icallect/config.yml")
    end

    def add(feed)
      @values['feeds'] << feed
      save
    end

    def save
      File.open(configfile, 'w+') {|f| f.write(@values.to_yaml) }
    end

  end
end

