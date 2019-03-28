class Hexadecimal
  def initialize(string)
    @string = string
  end

  def to_decimal
    hex_key = {"0" => 0,
               "1" => 1,
               "2" => 2,
               "3" => 3,
               "4" => 4,
               "5" => 5,
               "6" => 6,
               "7" => 7,
               "8" => 8,
               "9" => 9,
               "a" => 10,
               "b" => 11,
               "c" => 12,
               "d" => 13,
               "e" => 14,
               "f" => 15}
    parsed = @string.chars
    output = []
    valid = nil

    parsed.reverse.each_with_index do |element, index| 
      valid = hex_key.has_key?(element)
      break if valid == false
      output << hex_key[element] * (16 ** index)
    end

    if valid
      output.reduce(:+)
    else
      0
    end
  end
end
