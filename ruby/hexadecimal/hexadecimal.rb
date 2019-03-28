class Hexadecimal
  def initialize(string)
    @string = string
  end

  def to_decimal
    parsed = @string.split('')
    output = ""
    parsed.each do |character|
      if character =~ /[0-9]/
        output << number_convert
      elsif character =~ /[A-Za-z]/
        output << letter_convert
      end
    end
    output.to_i
  end

  def number_convert
    
  end

  def letter_convert
    
  end
end