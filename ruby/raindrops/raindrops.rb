
class Raindrops
  def self.convert(num)
    factors = []
    count = 1
    output = ''

    while count <= num
      if num % count == 0
        factors << count
      end
      count += 1
    end

    factors.each do |test|
      if test == 3
        output += 'Pling'
      elsif test == 5
        output += 'Plang'
      elsif test == 7
        output += 'Plong'
      end
    end

    if output.empty?
      num.to_s
    else
      output
    end
  end
end

module BookKeeping
  VERSION = 3
end
