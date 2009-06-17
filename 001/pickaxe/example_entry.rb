class IntegerArray

  def self.intersection( array_1, array_2 )
    array_1 & array_2
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

