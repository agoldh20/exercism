class Array
  
  def accumulate
    accumulater_result = []
    each { |array_element| accumulater_result << yield(array_element) }
    accumulater_result
  end

end

module BookKeeping
  VERSION = 1
end