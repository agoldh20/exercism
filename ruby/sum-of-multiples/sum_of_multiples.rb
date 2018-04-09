class SumOfMultiples
  attr_accessor :multiple

  def initialize(*multiple)
    @multiple = multiple
  end

  def to(limit)
    numbers = []
    (1..(limit - 1)).each do |count|
      @multiple.each do |checker|
        numbers << count if count % checker == 0
      end
    end
    numbers = numbers.uniq
    sum = 0
    numbers.each do |number|
      sum += number
    end
    sum
  end
end

module BookKeeping
  VERSION = 2
end