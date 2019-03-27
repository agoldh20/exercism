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

    parsed.each {|element| valid = !!hex_key.has_key?(element) && output << hex_key[element]}

    unless valid
      0
    else
      output.clear
      parsed.reverse.each_with_index do |element, index|
        output << hex_key[element] * (16 ** index)
      end
      output.reduce(:+)
    end
  end
end
