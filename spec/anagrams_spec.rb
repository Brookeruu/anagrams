require 'rspec'
require 'pry'
require 'anagrams'
# include Anagram

describe('#anagrams') do
  it('should receive a word and return the word with all non-letter characters removed') do
      anagram1 = Anagram.new("word1", "word2")
    expect(anagram1.remove_specials_sort("w#or-ds!@")).to(eq("words"))
  end
end
