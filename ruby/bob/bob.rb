class Bob
  def self.hey(remark)
    remark.strip!
    if remark[-1] == "?"
      if remark[1].match? /([A-Z])/
        return "Whoa, chill out!"
      else
        return "Sure."
      end
    elsif remark == ""
      return "Fine. Be that way!"
    elsif remark == remark.upcase
      unless remark.upcase == remark.downcase
        return "Whoa, chill out!"
      else
        return "Whatever."
      end
    else
      return "Whatever."
    end
  end

end

module BookKeeping
  VERSION = 1
end