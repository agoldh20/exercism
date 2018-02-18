class Prime
  def self.nth(max)
    raise ArgumentError if max == 0

    # test_array = (2..max).to_a
    primes_array ||= [2, 3]
    until primes_array.count == max
      primes_array.each do |number|
        test_counter = 1
        primes_array.each do |num|
          test_counter -= 1 if number % num == 0
        end 
        primes_array << number if test_counter == 0 
      end
    end
    result = primes_array.uniq
    result[max-1]
  end



  # primes ||= [2, 3]
  #     candidate = primes.last

  #     while max > primes.length
  #       candidate += 2

  #       unless primes.any? { |prime| candidate % prime == 0 }
  #         primes << candidate
  #       end
  #     end
  #     primes[max - 1]

  # end
end