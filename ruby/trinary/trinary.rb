class Trinary
  attr_accessor :numbers_arr

  def initialize(number)
    @numbers = number
  end

  def checker
    if @numbers.match(/[^0-2]/)
      @numbers_arr = ["0"]
    else
      @numbers_arr = @numbers.reverse.chars
    end
  end

  def to_decimal
    checker
    return_array = []
    @numbers_arr.each_with_index do |number, index|
      return_array << number.to_i * (3 ** index)
    end
    return_array.reduce(:+)
  end
end

module BookKeeping
  VERSION = 1
end