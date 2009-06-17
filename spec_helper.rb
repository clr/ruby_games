require 'rubygems'
require 'spec'
if RUBY_VERSION == "1.8.6"
elsif RUBY_VERSION == "1.9.1"
  require 'spec/autorun'
else
end
require 'benchmark'

Spec::Runner.configure do |config|

  config.before(:all) do
    @reports = []
  end
  config.after(:all) do
    @reports.each do |report|
      puts ''
      puts report
    end
  end
end
