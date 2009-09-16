# Hint:
# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000



class RomanNumeral


  def initialize( numeral_string )
    @numeral_string = numeral_string
  end

  def +( numeral_string )
    # "MMX"
    x = str_to_int(@numeral_string) + str_to_int(numeral_string.to_s)
    puts x
    x
  end

  def -( numeral_string )
    # "MCMXCVI"
    x = str_to_int(@numeral_string) - str_to_int(numeral_string.to_s)
    puts x
    x
  end
  
  def to_s
    @numeral_string
  end

  def str_to_int (string)
    chars = string.split('')
    last = value_for(chars.shift)
    value = 0

    chars.each do |c|
      i = value_for(c)
      # 1
      if !last.nil?
        # 1a
        if i > last
          value += (i - last)
          last = nil
        # 1b
        else
          value += last
          last = i
        end
      # 2
      else
        last = i
      end
    end

    # 3
    if last
      value += last
    end

    value
  end
  
  def value_for(string)
    case string
      when 'I' then 1
      when 'V' then 5
      when 'X' then 10
      when 'L' then 50
      when 'C' then 100
      when 'D' then 500
      when 'M' then 1000
      else 
        raise 'Your Mom!'
    end
  end
  
end

