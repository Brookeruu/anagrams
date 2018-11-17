require 'rspec'
require 'pry'
require 'anagrams'
# include Anagram

describe('#anagrams') do
  it('should receive a word and return the word inalphabetical order with all non-letter characters removed') do
      anagram1 = Anagram.new("word1", "word2")
    expect(anagram1.remove_special_chars("w#or-ds!@")).to(eq("dorsw"))
  end

  it('should return false if the word does not contain a vowel') do
      anagram3 = Anagram.new("word1", "word2")
    expect(anagram3.check_vowel("words")).to(eq(true))
  end

  it('should return true if the word does contain a vowel') do
      anagram4 = Anagram.new("word1", "word2")
    expect(anagram4.check_vowel("")).to(eq(false))
  end


end
