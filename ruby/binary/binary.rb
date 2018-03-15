class Binary
  def self.to_decimal(number)
    if number.match(/[^0-1]/)
     raise ArgumentError
    else
       number.to_i(2) 
    end
  end
end

module BookKeeping
  VERSION = 3
end