class Binary
  def self.to_decimal(input)
    @input = input.chars
    valid?
    reversed = @input.reverse!.map(&:to_i)
    multiplier = 1
    total = 0
    reversed.each do |num|
      total += num * multiplier
      multiplier *= 2
    end
    total
  end

  def self.valid?
    raise ArgumentError unless @input.all? { |num| num == '1' || num == '0' }
  end
end

module BookKeeping
  VERSION = 3
end
