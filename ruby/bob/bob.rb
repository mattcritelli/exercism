require 'pry-byebug'

class Bob

  def self.hey(remark)
    @remark = remark
    if say_nothing
      p "say_nothing"
      "Fine. Be that way!"
    elsif question? && !all_caps
      p "question? && !all_caps"
      "Sure."
    elsif question? && all_caps
      p "question? && all_caps"
      "Whoa, chill out!"
    elsif question?
      p "question?"
      "Sure."
    elsif all_caps #&& include_letters
      p "all_caps"
      "Whoa, chill out!"
    else
      p "else"
      "Whatever."
    end
  end

  # def self.include_letters
  #   alphabet = [*('a'..'z')]
  #   @remark.split.any? { |char| alphabet.include?(char)}
  # end

  def self.all_caps
    @remark.gsub(/\W/,"").split("").all? { |letter| letter == letter.upcase }
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
