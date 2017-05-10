class Hamming
  def self.compute(strand_one, strand_two)
    unless strand_one.length == strand_two.length
      raise ArgumentError, 'Strands must be the same length'
    end

    count = 0
    index = 0
    while index < strand_one.length
      if strand_one[index] != strand_two[index]
        count += 1
      end
      index += 1
    end
    count
  end
end

module BookKeeping
  VERSION = 3
end
