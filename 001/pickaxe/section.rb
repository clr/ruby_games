class Section
  def self.intersection( array_1, array_2 )
    array_1.select{|item| array_2.include?(item)}
  end
end
