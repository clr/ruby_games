class RomanNumeral

  def initialize( numeral_string )
    @roman_string = numeral_string
  end

  def +( numeral_string )
    self.to_I + numeral_string.to_I
  end

  def -( numeral_string )
    self.to_I - numeral_string.to_I
  end

  def to_I
    @roman_string.to_a.each do |letter|
      if @roman_string.shorthand?
        @longhand - Array( RomanNumeral.scratch_counts( letter ), "I" )
      else
        @longhand + Array( RomanNumeral.scratch_counts( letter ), "I" )
      end
      @roman_string = [ 1..( @roman_string.length - 1 ) ]
    end
  end

  def shorthand?
    @roman_string[ 1..( @roman_string.length - 1 ) ].detect{ |letter| RomanNumeral.letters.index( @roman_string[0] )
  end

  def self.scratch_counts( letter )
    case letter
    when 'I':
      1
    when 'V':
      5
    when 'X':
      10
    when 'L':
      50
    when 'C':
      100
    when 'D':
      500
    when 'M':
      1000
    else
      raise "ERROR!! Wtf is that -- Greek?"
    end
  end

  def self.letters
    "MDCLXVI"
  end

  def self.has_shorthand?( letters )

  end
end

