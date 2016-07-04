# exercism #5

# version tracker
module BookKeeping
  VERSION = 2
end

# problem main
class Raindrops
  # factor-to-sound lookup table
  @table = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  # convert number to its corresponding sound/string
  def self.convert(number)
    response = ''
    @table.each do |factor, sound|
      response.concat(sound) if number.modulo(factor) == 0
    end
    response.empty? ? number.to_s : response
  end
end
