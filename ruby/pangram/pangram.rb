class Pangram
  def self.empty_string(string)
    string = string.strip
    string.length == 0
  end
    
  def self.pangram_tester(string)
      stripped = string.strip.downcase
      stripped.gsub!(/[^a-z]/,'')
      array = stripped.chars
      return true if array.uniq.count >= 26
  end

  def self.pangram?(phrase)
    if empty_string(phrase)
      return false
    elsif pangram_tester(phrase) == true
      return true
    else
      false
    end 
  end
end

module BookKeeping
    VERSION = 6 
  end