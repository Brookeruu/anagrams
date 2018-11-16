class Anagram
  attr_accessor(:word)

  def initialize(word)
    @word = word
    @matching_letters = []
  end

  def anagram_finder
    letters_only = @word

    letters_only = letters_only.gsub!(/[^A-Za-z]/, '')

    return letters_only
  end
# end
end
