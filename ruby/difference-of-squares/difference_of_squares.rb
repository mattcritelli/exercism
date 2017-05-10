class Squares
  attr_accessor :num

  def initialize(num)
    self.num = num
  end

  def square_of_sum
    (0..num).to_a.reduce(:+) ** 2
  end

  def sum_of_squares
    (0..num).to_a.map { |x| x ** 2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 3
end
