class Series
  attr_accessor :initial_string, :return_array

  def initialize(initial_string)
    @initial_string = initial_string
    @return_array = []
  end

  def slices(number)
    if number == 1
      @initial_string.chars
    elsif number > @initial_string.length
      raise ArgumentError
    else
      slice_start = 0
      slice_end = number - 1
      @initial_string.length.times do
        return_array << @initial_string.slice(slice_start..slice_end)
        slice_start += 1
        slice_end += 1
      end
      return_array.reject {|element| element.length < number}
    end
  end
end