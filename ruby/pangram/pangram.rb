class Pangram
  def self.empty_string(string)
    @string = string.strip
    @string.length == 0
  end

  def self.pangram?(phrase)
    if empty_string(phrase)
      return false
    end
  end
end