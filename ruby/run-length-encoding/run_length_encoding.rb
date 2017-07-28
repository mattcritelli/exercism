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
end
