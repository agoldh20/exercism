class Squares
  attr_accessor :number
  
  def initialize(number)
    @number = number
  end

  def square_of_sum
    array = (1..@number).to_a
    add_total = 0
    array.each do |element|
      add_total += element
    end
    return (add_total ** 2)
  end

  def sum_of_squares
    array = (1..@number).to_a
    add_total = 0
    array.each do |element|
      add_total += (element ** 2)
    end
    return add_total
  end

  def difference
    return square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end