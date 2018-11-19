require 'rspec'
require 'pry'
require 'anagrams'
# include Anagram

describe('#anagrams') do
  it('should receive a word and return the word inalphabetical order with all non-letter characters removed') do
      anagram1 = Anagram.new("word1", "word2")
    expect(anagram1.remove_special_chars("w#or-ds!@")).to(eq("dorsw"))
  end

  it('remove special characters, sort, and downcase all letters') do
      anagram2 = Anagram.new("word1", "word2")
    expect(anagram2.remove_special_chars("w#oR-dS!@")).to(eq("dorsw"))
  end

  it('should return false if the word does not contain a vowel') do
      anagram3 = Anagram.new("word1", "word2")
    expect(anagram3.check_vowel("words")).to(eq(true))
  end

  it('should return true if the word does contain a vowel') do
      anagram4 = Anagram.new("word1", "word2")
    expect(anagram4.check_vowel("")).to(eq(false))
  end

  it('should return a phrase if the either word do not contain a vowel') do
      anagram5 = Anagram.new("word1$", "wrrd2@")
    expect(anagram5.find_anagram()).to(eq("Both words much contain a vowel"))
  end


end
