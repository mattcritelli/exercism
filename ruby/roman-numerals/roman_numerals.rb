class Integer
  def to_roman
    x = self
    output = ''
    roman_hash = { 'M' => 1000,
                   'CM' => 900,
                   'D' => 500,
                   'CD' => 400,
                   'C' => 100,
                   'XC' => 90,
                   'L' => 50,
                   'XL' => 40,
                   'X' => 10,
                   'IX' => 9,
                   'V' => 5,
                   'IV' => 4,
                   'I' => 1 }

    roman_hash.each do |key, value|
      while x >= value
        output += key
        x -= value
      end
    end
    output
  end
end

class BookKeeping
  VERSION = 2
end
