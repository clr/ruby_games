# Pull in some spec settings.
require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper' )

# Pull in all the Ruby files in this directory.
Dir.glob( File.join( File.dirname(__FILE__), '*.rb' ) ).each do |file|
  require file unless file.match /_spec.rb$/
end

# Our spec for an Array of Integers.  Specifically,
# we are interested in Array intersections, looking at the 
# elements that are common to two different arrays.
describe IntegerArray do

  array_1 = Array.new( 100000 ).collect{ rand( 1000000 ) }.uniq
  array_2 = Array.new( 100000 ).collect{ rand( 1000000 ) }.uniq
  
  it "should have the same exact result set as the internal Ruby method" do
    
    @reports << Benchmark.measure do
      @control_group = ( array_1 & array_2 )
    end
    
    @reports << Benchmark.measure do
      @result = IntegerArray.intersection( array_1, array_2 )
    end
    
    @result.length.should eql( @control_group.length )
    @result.sort.should ==( @control_group.sort )
  end

end 



