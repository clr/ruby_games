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
      ( RomanNumeral.new( "MMX" ) - RomanNumeral.new( "XIV" ) ).should eql( "MCMXCVI" )
    end
  end

  it "converts a roman numeral to a decimal" do
    roman = RomanNumeral.new("MCM")
    roman.to_decimal("MCM").should eql(1900)
  end

  it "converts a decimal to a numeral" do
    pending
  end

end 



