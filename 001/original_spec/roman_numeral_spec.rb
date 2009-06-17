# Pull in some spec settings.
require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper' )

# Pull in all the Ruby files in this directory.
Dir.glob( File.join( File.dirname(__FILE__), '*.rb' ) ).each do |file|
  require file unless file.match /_spec.rb$/
end

# Given a Roman Numeral string, compute the Roman Numeral answer.
describe RomanNumeral do

  it "should compute simple arithmatic" do

    @reports << Benchmark.measure do
      RomanNumeral.arithmetic( "MCMXCVI + XIV" ).should eql( "MMX" )
    end
  end

end 



