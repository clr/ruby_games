# Pull in some spec settings.
require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper' )

# Pull in all the Ruby files in this directory.
Dir.glob( File.join( File.dirname(__FILE__), '*.rb' ) ).each do |file|
  require file unless file.match /_spec.rb$/
end

# Here is the problem statement:
# Take the names of two U.S. States, mix them all together, 
# then rearrange the letters to form the names of two other 
# U.S. States. Return the an array of arrays, the first being
# the original states, and the second being the resulting two states.
describe StateNameMixer do

  all_states = [ 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming' ]

  it "should have the same exact result set as the internal Ruby method" do

    @reports << Benchmark.measure do
      @original_states, @resultant_states = *StateNameMixer.mix_it_up( all_states )
      @original_states.collect{ |s| s.split().flatten() }.sort.should eql( 
        @resultant_states.collect{ |s| s.split().flatten() }.sort
      )
    end
  end

end 



