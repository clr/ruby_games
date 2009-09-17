class WideFinder

  def initialize( findee )
    @counts = {}
    @counts.default = 0

    if findee.kind_of?(Array)
      countme( findee )
    elsif findee.kind_of?(String)
      file = File.new(findee, "r")
	  #countme( file.read.split )
	  countme( file.readlines )
    else
    	raise ArgumentError
    end
  end

  def countme( lines )
      regex = /\?.*/
	  lines.each do |line|
	  	key = line.split(' ')[6]
	  	key = key.gsub(regex, '') if key.include?('?')
	    if @counts[key]
	      @counts[key] += 1
	    else
	      @counts[key] = 1
	    end
	  end
  end

  def results
    @counts.sort_by{ |k,v| -v }[0,4].map {|item| "#{item[1]}: #{item[0]}" }
  end

end

