class Grains
  def self.square(square_num)
    if square_num > 0 && square_num < 65
      2 ** (square_num - 1)
    else
      raise ArgumentError
    end
  end

  def self.total
    square(64) * 2 - 1
 end
end

module BookKeeping
  VERSION = 1 
end