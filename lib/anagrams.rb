class Anagram
  attr_acccessor(:word)

  def initialize()
    @word = str
    @matching_letters = []
  end

  def anagram_finder(word)
    letters_only = word.split("")
    word.delete if {|a| a == /\W/}
end
end
