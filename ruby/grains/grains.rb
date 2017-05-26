class Grains
  def self.square(num, product = 2)
    valid(num)
    return 1 if num == 1
    product * square(num - 1, product)
  end

  def self.total
    count = 0
    total = 0
    while count < 64
      total += 2**count
      count += 1
    end
    total
  end

  def self.valid(num)
    raise ArgumentError unless [*(1..64)].include?(num)
  end
end

class BookKeeping
  VERSION = 1
end
