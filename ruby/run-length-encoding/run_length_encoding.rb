class RunLengthEncoding
  def self.encode(input)
    return '' if input.length.zero?
    output = ''
    idx = 0
    count = 0

    while idx < input.length
      current_char = input[idx]
      count += 1

      if current_char != input[idx+1]
        if count == 1
          output += current_char
        else
          output += count.to_s + current_char
        end
        count = 0
      end
      idx += 1
    end
    output
  end

  def self.decode(input)
    return '' if input.length.zero?
    output = ''
    idx = 0
    numbers = [*(1..9)]

    while idx < input.length
      if numbers.include?(input[idx].to_i)
        count = input[idx]
        while numbers.include?(input[idx+1].to_i)
          idx += 1
          count += input[idx]
        end
        count.to_i.times { output += input[idx+1]}
        idx += 1
      else
        output += input[idx]
      end
      idx += 1
    end
    output
  end
end

module BookKeeping
  VERSION = 3
end
