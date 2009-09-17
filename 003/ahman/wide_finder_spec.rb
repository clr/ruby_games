# Pull in some spec settings.
require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper' )

# Pull in all the Ruby files in this directory.
Dir.glob( File.join( File.dirname(__FILE__), '*.rb' ) ).each do |file|
  require file unless file.match /_spec.rb$/
end

describe WideFinder do

  it "should warm up with a sample line" do
    
    @reports << Benchmark.measure do
      sample = WideFinder.new( [
        '88.72.233.7 - - [12/Sep/2009:05:53:28 -0400] "GET /images/first-url.png HTTP/1.1" 200 2170',
        '88.72.233.7 - - [12/Sep/2009:05:53:28 -0400] "GET /images/first-url.png HTTP/1.1" 200 2170',
        '88.72.233.7 - - [12/Sep/2009:05:53:28 -0400] "GET /images/other-url.png HTTP/1.1" 200 2170' 
      ] )
      sample.results[0].should eql( "2: /images/first-url.png" )
      sample.results[1].should eql( "1: /images/other-url.png" )
    end

  end

  it "should compute simple arithmatic" do

    @reports << Benchmark.measure do
      sample = WideFinder.new( '003/raw_data.log' )
      sample.results.should eql( ["11101: /search/image_set/20", "8505: /search/image_set/40", "5263: /javascripts/jquery.js", "5257: /javascripts/jquery-ui.js" ] )
    end

  end

end 



