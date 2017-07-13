require 'pry-byebug'

class Bob

  def self.hey(remark)
    @remark = remark
    if say_nothing
      "Fine. Be that way!"
    elsif question? && !all_caps
      "Sure."
    elsif question? && all_caps
      "Whoa, chill out!"
    elsif question?
      "Sure."
    elsif all_caps
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end

  def self.all_caps
    @remark.gsub(/\W/,"").split("").all? { |letter| letter == letter.upcase }
    # binding.pry
  end

  def self.question?
    @remark[-1] == '?'
  end

  def self.say_nothing
    @remark.strip.gsub(" ", "").empty?
  end

end

class BookKeeping
  VERSION = 1
end
