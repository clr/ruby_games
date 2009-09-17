class WideFinder

  def initialize( findee )
    @results = {}
    if findee.is_a? Array
      findee.each do |line|
        key = line.split( ' ' )[6].split( '?' )[0]
        @results[ key ] = ( @results[ key ] || 0 ) + 1
      end
    elsif findee.is_a? String
      File.readlines( findee ).each do |line|
        key = line.split( ' ' )[6].split( '?' )[0] 
        @results[ key ] = ( @results[ key ] || 0 ) + 1
      end
=begin
      File.open( findee ) do |file|
        while( line = file.gets )
          key = line.split( ' ' )[6].split( '?' )[0] 
          @results[ key ] = ( @results[ key ] || 0 ) + 1
        end
      end
=end
    end
    @results = @results.sort{ |a, b| b[1] <=> a[1] }  
  end

  def results
    @results.map{ |stat| "#{ stat[1] }: #{ stat[0] }" }[0,4]
  end

end

