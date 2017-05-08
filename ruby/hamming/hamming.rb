class Hamming


  def self.compute(strand_one, strand_two)
    count = 0
    index = 0

    unless strand_one.length == strand_two.length
      raise ArgumentError.new("Strands must be the same length")
    end

    while index < strand_one.length
      if strand_one[index] != strand_two[index]
        count += 1
      end
      index +=1
    end
    return count
  end
end

module BookKeeping
  VERSION = 3
end
