require 'prime'

class Prime
  def self.nth(max)
    raise ArgumentError if max == 0

    Prime.first(max).last

  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end