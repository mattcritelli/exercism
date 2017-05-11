class Sieve
  attr_accessor :num, :prime_factors, :possibilities

  def initialize(num)
    self.num = num
    self.prime_factors = []
    self.possibilities = [*(2..num)]
  end

  def primes
    until possibilities.length.zero?
      current_prime = possibilities[0]
      multiples = current_prime
      possibilities.delete(current_prime)
      while multiples <= num
        multiples += current_prime
        possibilities.delete(multiples)
      end
      prime_factors << current_prime
    end
    prime_factors
  end
end

class BookKeeping
  VERSION = 1
end
