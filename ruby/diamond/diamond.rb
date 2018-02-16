class Diamond
  def self.make_diamond(letter)
    return "#{letter}\n" if letter == "A"

    alphabet = ("A"..letter).to_a
    reverse_arr = alphabet.reverse
    reverse_arr.delete_at(0)
    reverse_alphabet = reverse_arr

    outside_space = letter.ord - 64
    inside_space = -3
    line = ""

    alphabet.each do |letter|
      outside_space -= 1
      inside_space += 2

      line << generate_line(letter, outside_space, inside_space)
    end
    
    reverse_alphabet.each do |letter|
      outside_space += 1
      inside_space -= 2

      line << generate_line(letter, outside_space, inside_space)
    end
    
    line
  end

  private

  def self.generate_line(letter, outside_space, inside_space)
    if letter == "A"
        return "#{" " * outside_space}A#{" " * outside_space}\n"
      else
        return "#{" " * outside_space}#{letter}#{" " * inside_space}#{letter}#{" " * outside_space}\n"
      end
  end
end

class Bookkeeping
  VERSION = 1
end