class Grains
  def self.square(num)
    valid(num)
    return 1 if num == 1
    count = 2
    product = 2

    while count < num
      count += 1
      product *= 2
    end
    product
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
