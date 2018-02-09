class Raindrops
  def self.convert(number)
    string = []

    string << "Pling" if number % 3 == 0

    string << "Plang" if number % 5 == 0

    string << "Plong" if number % 7 == 0

    string << number.to_s unless number % 7 == 0 || number % 5 == 0 || number % 3 == 0
  
    return string.join

  end
end

module BookKeeping
  VERSION = 3
end