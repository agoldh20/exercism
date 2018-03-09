class RunLengthEncoding

  def self.encode(input)
    key = input.squeeze.split("")
    original = input.split("")
    output = ""
    start = 0
    key.each do |key_letter|
      code_counter = 0
      original.slice(start..-1).each do |original_letter|
        if original_letter == key_letter
          code_counter += 1
        else 
          break
        end
      end
      start += code_counter
      output << "#{code_counter if code_counter > 1}#{key_letter}"
    end
    output
  end

  def self.decode(input)
    original = input.split("")
    output = ""
    counter = ""
    original.each do |original_letter|
      if original_letter.match(/\d/)
        counter << original_letter
      else
        if counter != ""
          output << original_letter * counter.to_i
          counter.clear
        else
          output << original_letter
        end
      end
    end
    output
  end

end

module BookKeeping
  VERSION = 3 
end