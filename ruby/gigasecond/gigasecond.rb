module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

class Gigasecond

  def self.from(date)
    date
    return gig_sec = date + 1000000000
  end

end