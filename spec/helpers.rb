require 'awesome_print'

require 'minitest/ci'
require 'simplecov'
require 'simplecov-rcov'

if( ENV['COVERAGE'] == 'on' )
  class SimpleCov::Formatter::MergedFormatter
    def format(result)
       SimpleCov::Formatter::HTMLFormatter.new.format(result)
       SimpleCov::Formatter::RcovFormatter.new.format(result)
    end
  end
  SimpleCov.formatter = SimpleCov::Formatter::MergedFormatter
  SimpleCov.root(File.expand_path("../../", __FILE__))
  SimpleCov.start
end
MiniTest::Ci.auto_clean = false
