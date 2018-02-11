require 'prime'

class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    array = []
    Prime.each(@number) do |prime|
      array << prime
    end
    array
  end
 
end

module BookKeeping
   VERSION = 1 
end