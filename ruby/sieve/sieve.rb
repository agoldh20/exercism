class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    test_array = (2..@number).to_a
    primes_array = []
    test_array.each do |number|
      test_counter = 1
      test_array.each do |num|
        test_counter -= 1 if number % num == 0
      end 
      primes_array << number if test_counter == 0 
    end
    return primes_array
  end

end

module BookKeeping
   VERSION = 1 
end