# Exercism Hamming exercise (#2)
class Hamming
  def self.compute(strand1, strand2)
    distance = 0

    # inputted strands must be of equal length
    raise ArgumentError unless strand1.length == strand2.length

    # compute distance
    strand1.length.times do |i|
      # increase distance if bytes do not match
      distance += 1 if strand1.byteslice(i) != strand2.byteslice(i)
    end
    distance
  end
end

module BookKeeping
  VERSION = 3
end
