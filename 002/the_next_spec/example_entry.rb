class RomanNumeral

  #the_numerals = Hash["I",1,"V",5,"X",10,"L",50,"C",100,"D",500,"M",1000]
  decimal_value = 0
  def numerals
    Hash["I",1,"V",5,"X",10,"L",50,"C",100,"D",500,"M",1000]
  end
  
  def initialize( numeral_string )
     #self.decimal_value.to_decimal(numeral_string)
  end

  def to_decimal (numeral_string)
    the_numerals = self.numerals
    decimal_value = 0
    i = 0
    loop do 
      this_decimal =  the_numerals[numeral_string[i,1]] 
      next_decimal = the_numerals[numeral_string[i+1,1]] 
      
      next_decimal ||= 0
      
      if this_decimal < next_decimal
        decimal_value += next_decimal - this_decimal
        i += 1
      else
        decimal_value += this_decimal
      end 
      
      i += 1
     if i >= numeral_string.length - 1 
       break
     end
      
    end
    
    return decimal_value

  end
  
  def to_roman
    
  end

  def +( numeral_string )
    "MMX"
  end

  def -( numeral_string )
    "MCMXCVI"
  end
end

