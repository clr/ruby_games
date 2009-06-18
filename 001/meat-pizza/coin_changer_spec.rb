# Pull in some spec settings.
require File.join( File.dirname(__FILE__), '..', '..', 'spec_helper' )

# Pull in all the Ruby files in this directory.
Dir.glob( File.join( File.dirname(__FILE__), '*.rb' ) ).each do |file|
  require file unless file.match /_spec.rb$/
end

# Given the money we have, pay for something in proper change.
describe CoinChanger do

  our_money = { :quarters => ( 2 + rand( 20 ) ), :dimes => rand( 50 ), :nickels => ( 5 + rand( 100 ) ), :pennies => 100 }

  it "should give us back a proper combination" do

    @reports << Benchmark.measure do
      @total = 0
      CoinChanger.change_me( "$5.67" ).each do |i, count|
        @total += ( { :quarters => 25, :dimes => 10, :nickels => 5, :pennies => 1 }[i] * count )
      end
      @total.should ==( 567 )
    end
  end

end 



