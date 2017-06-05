class Phrase
  attr_reader :count

  def initialize(phrase)
    @phrase = phrase.downcase
    @counts = {}
  end

  def word_count
    format_phrase
    split_phrase
    @phrase.each do |word|
      @counts.include?(word) ? @counts[word] += 1 : @counts[word] = 1
    end
    @counts
  end

  def split_phrase
    @phrase = @phrase.split
  end

  def format_phrase
    @phrase.gsub!(/\W*[^'\w]/, ' ')
  end
end

module BookKeeping
  VERSION = 1
end
