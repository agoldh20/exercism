class Hamming 

  def self.compute(a,b)
    hamming_distance = 0
    a = a.split("")
    b = b.split("")
    hamming_index = 0
    count = a.length
    if a.length == b.length
      count.times do
        if a[hamming_index] != b[hamming_index]
          hamming_distance += 1
          hamming_index += 1
          count += 1
        elsif
          hamming_index += 1
          count += 1
        end
      end
    else
      raise ArgumentError
    end
    return hamming_distance
  end

end

module BookKeeping
  VERSION = 3
end