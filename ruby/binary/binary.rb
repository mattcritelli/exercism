class Binary
  def self.to_decimal(input)
    @input = input.chars
    valid?
  end

  def self.valid?
    raise ArgumentError unless @input.all? { |num| num == '1' || num == '0' }
  end

end
