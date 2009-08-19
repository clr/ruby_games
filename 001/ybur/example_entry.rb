class IntegerArray

  def self.intersection( array_1, array_2 )
    result = []
    array_1.sort!
    array_2.sort!
    
    j = 0
    array_2_length = array_2.length
    array_1.each do |element_1|
    
      while( ( j < array_2_length ) && ( array_2[ j ] < element_1 ) ) do
        j += 1
      end

      if( array_2[ j ] == element_1 )
        result << element_1
      end
        
    end
    return result
  end
  
  def self.intersection( array_1, array_2 )
    result = []
    mass_array = ( array_1 + array_2 ).sort
    while( old_value = mass_array.pop ) do
      if( old_value == mass_array.last )  
        result << old_value if ( old_value == mass_array.last )
      end
    end
    return result
  end

#  def self.intersection( array_1, array_2 )
#    hash = {}
#    result = []
#    array_2.each do |value|
#      hash[ value ] = 0
#    end
#    array_1.each do |value|
#      hash[ value ] = 1 if hash[ value ]
#    end
#    hash.each do |i, value|
#      result << i if( value == 1 )
#    end
#    return result
#  end

  def self.intersection( array_1, array_2 )
    # ----------------------------
    # Completed by
    # Russ Jones and Bogart Salzberg
    # ----------------------------

    # ----------------------------
    # way #1
    #   0.020000   0.000000   0.020000 (  0.026530)
    # 502.560000   0.820000 503.380000 (503.767833)
    # Finished in 503.796304 seconds (8.3 minutes -  18988 x slower)
    # ----------------------------

    # array_3 = []
    # array_1.each  do |x|
    #   array_3 << x if array_2.include? x
    # end
    # array_3

    # ----------------------------
    # way #2
    #   0.020000   0.000000   0.020000 (  0.027828)
    # 505.350000   0.940000 506.290000 (506.756947)
    # Finished in 506.786922 seconds (8.4 minutes -  18210 x slower)
    # ----------------------------

    # array_1.reject! do |item|
    #   !array_2.include? item
    # end

    # ----------------------------
    # way #3
    #   0.020000   0.000000   0.020000 (  0.027342)
    # 513.080000   0.860000 513.940000 (514.371741)
    # Finished in 514.40147 seconds (8.5 minutes - 18812 x slower)
    # ----------------------------

    # array_1.delete_if { |item| !array_2.include? item }

    # ----------------------------
    # way #4
    # 0.020000   0.000000   0.020000 (  0.028825)
    # 0.270000   0.000000   0.270000 (  0.271256)
    # Finished in 0.302076 seconds (only 9 times slower)
    # ----------------------------

    array_1.sort!
    array_2.sort!
    array_3 = []
    index_1 = 0
    index_2 = 0

    while true
      break if (array_1[index_1]==nil || array_2[index_2]==nil)
      case array_1[index_1] <=> array_2[index_2]
        when -1
          # less than
          index_1 += 1
        when 1
          # greater than
          index_2 += 1
        else
          # equal
          array_3 << array_1[index_1]
          index_1 += 1
          index_2 += 1
      end
    end

    array_3
  end
  
end

class StateNameMixer

  def self.mix_it_up( string_set )
    [ [ 'foo', 'fee' ], [ 'fee', 'foo' ] ]
  end

end

class CoinChanger
  
  def self.change_me( dollar_string )
    { :pennies => 567 }
  end
  
end

class RomanNumeral

  def self.arithmetic( numeral_string )
    "MMX"
  end

end

