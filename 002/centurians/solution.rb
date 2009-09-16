# Peter and Topher's Solution

class RomanNumeral
  Numerals = {
    "I" => 1,
    "IV" => 4,
    "V" => 5,
    "IX" => 9,
    "X" => 10,
    "XL" => 40,
    "L" => 50,
    "XC" => 90,
    "C" => 100,
    "CD" => 400,
    "D" => 500,
    "CM" => 900,
    "M" => 1000
  }

  Ordered = Numerals.to_a.reverse # .sort_by{ |a| a[1] }.reverse

  attr_reader :value

  def initialize(arg)
    return @value = arg if arg.kind_of?(Integer)

    @value = 0
    highest = 0
    arg.reverse.split('').each do |l|
      n = Numerals[l]
      if n >= highest
        highest = n
        @value += n
      else
        @value -= n
      end
    end
  end

  def +(other)
    self.class.new(@value + other.value).to_s
  end

  def -(other)
    self.class.new(@value - other.value).to_s
  end

  def to_s
    str = ""
    value = @value
    Ordered.each do |l, n|
      while value >= n
        str += l
        value -= n
      end
    end
    str
  end
end


