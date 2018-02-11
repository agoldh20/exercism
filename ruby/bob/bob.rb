class Bob
  def self.question(string)
    string[-1] == "?"
  end

  def self.yell(string)
    string == string.upcase unless string.upcase == string.downcase
  end

  def self.speachless(string)
    string == ""
  end

  def self.hey(remark)
    remark.strip!
    if speachless(remark)
      return "Fine. Be that way!"
    elsif yell(remark)
      return "Whoa, chill out!"
    elsif question(remark)
      return "Sure."
    else
      return "Whatever."
    end
  end

end

module BookKeeping
  VERSION = 1
end