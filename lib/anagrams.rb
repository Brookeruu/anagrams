class Anagram
  attr_accessor(:word)

  def initialize(word)
    @word = word
    @matching_letters = []
  end

  def anagram_finder
  #   letters_only = word
  # end
    letters_only = *(word)
    letters_only.delete_if {|a| a == "/\W/"}
    # letters_only.to_s
    return letters_only
  end
end
