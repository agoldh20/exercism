class Deque
  attr_accessor :array

  def initialize
    @array = []
  end

  def pop
    result = @array.delete_at(-1)
  end

  def shift
    result = @array.delete_at(0)
  end

  def push(number)
    @array << number
  end

  def unshift(number)
    unshift_array = []
    @array.each_with_index do |element, index|
      unshift_array[index + 1] = element 
    end
    unshift_array[0] = number
    @array = unshift_array
  end
end