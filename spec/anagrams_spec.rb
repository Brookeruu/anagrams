require 'rspec'
require 'pry'
require 'anagrams'
# include Anagram

describe('#anagrams') do
  it('should receive a word and return the word with all non-letter characters removed') do
      word1 = Anagram.new("*wor-ds%")
    expect(word1.anagram_finder()).to(eq("words"))
  end
end
