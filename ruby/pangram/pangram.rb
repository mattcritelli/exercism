class Pangram
  def self.pangram?(phrase)
    alphabet = [*('a'..'z')]
    phrase.downcase!
    alphabet.all? { |letter| phrase.sub(' ', '').split('').include?(letter) }
  end
end

module BookKeeping
  VERSION = 4
end
