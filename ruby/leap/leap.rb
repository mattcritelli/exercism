class Year
  def self.leap?(year)
    if div_by_four(year)
      if div_by_one_hundred(year) && div_by_four_hundred(year)
        return true
      elsif div_by_one_hundred(year)
        return false
      end
      true
    end
  end

  def self.div_by_four(year)
    (year % 4).zero?
  end

  def self.div_by_one_hundred(year)
    (year % 100).zero?
  end

  def self.div_by_four_hundred(year)
    (year % 400).zero?
  end
end

class BookKeeping
  VERSION = 3
end
