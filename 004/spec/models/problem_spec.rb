require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Primer do

  it "should take a number and spit back it's prime roots" do
    factors = Primer.root( 331803648551 )
    factors.should ==[ 576019, 576029 ]
  end

end
