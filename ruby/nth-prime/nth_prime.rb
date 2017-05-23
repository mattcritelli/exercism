class Prime
  def self.nth(num)
    unless num > 0
      raise ArgumentError, 'must have number 1 or higher'
    end

    primes_array = [2]
    counter = 3
    while primes_array.length < num
      if is_prime(counter)
        primes_array << counter
      end
      counter += 1
    end
    primes_array[-1]
  end

  def self.is_prime(num)
    prime = true
    num_to_check = 2

    while num_to_check < num
      if (num % num_to_check).zero?
        return prime = false
      else
        num_to_check += 1
      end
    end
    prime
  end
end

module BookKeeping
  VERSION = 1
end
