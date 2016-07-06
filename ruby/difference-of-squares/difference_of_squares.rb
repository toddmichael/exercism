# difference-of-squares exercise
class Squares
  def initialize(limit)
    @limit = limit
  end

  attr_reader :limit

  # add a range of numbers together and then square it
  def square_of_sum
    (0..limit).reduce(:+)**2
  end

  # add the squares of a range of numbers
  def sum_of_squares
    sum = 0
    (0..limit).each do |n|
      sum += n**2
    end
    sum
  end

  # diff the two
  def difference
    square_of_sum - sum_of_squares
  end
end

# version tracker
module BookKeeping
  VERSION = File.read('./.version').to_i
end
