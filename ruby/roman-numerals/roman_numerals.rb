class Fixnum

  def to_roman
    roman_hash = {
               1000 => "M",
                900 => "CM",
                500 => "D",
                400 => "CD",
                100 => "C",
                 90 => "XC",
                 50 => "L",
                 40 => "XL",
                 10 => "X",
                  9 => "IX",
                  5 => "V",
                  4 => "IV",
                  1 => "I"
                }

    number = self
    result = ""

    roman_hash.each_pair do |num, letter|
      while number >= num
        result << letter
        number -= num
      end
    end
    result
  end

end

module BookKeeping
  VERSION = 2
end