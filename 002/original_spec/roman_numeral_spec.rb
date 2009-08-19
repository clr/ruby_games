# Pull in some spec settings.
require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper' )

# Pull in all the Ruby files in this directory.
Dir.glob( File.join( File.dirname(__FILE__), '*.rb' ) ).each do |file|
  require file unless file.match /_spec.rb$/
end

# Given a Roman Numeral string, compute the Roman Numeral answer.
# Hint:
# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000
describe RomanNumeral do

  it "should compute simple arithmatic" do

    @reports << Benchmark.measure do
      ( RomanNumeral.new( "MCMXCVI" ) + RomanNumeral.new( "XIV" ) ).should eql( "MMX" )
    end
  end

end 



