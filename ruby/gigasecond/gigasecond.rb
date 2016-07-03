# exercism #3

# version tracker
module BookKeeping
  VERSION = 3
end

# calculate the date that someone will celebrate their 1 gigasecond anniversary
class Gigasecond
  def self.from(time)
    # add 1 billion seconds to inputted time
    time + 1_000_000_000
  end
end
