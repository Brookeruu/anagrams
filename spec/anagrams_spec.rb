require 'rspec'
require 'pry'
require 'anagrams'
# include Anagram

describe('#anagrams') do
  it('should receive a word and return the word with all non-letter characters removed') do
      anagram1 = Anagram.new("word1", "word2")
    expect(anagram1.remove_specials("w#or-ds!@")).to(eq("words"))
  end

  it('should receive a word and return the word in alpabetical order') do
      anagram2 = Anagram.new("word1", "word2")
    expect(anagram2.sort_and_join(["w", "o", "r", "d", "s"])).to(eq("dorsw"))
  end

  it('should return false if the word does not contain a vowel') do
      anagram3 = Anagram.new("word1", "word2")
    expect(anagram3.check_vowel("wrrds")).to(eq(false))
  end

  it('should return true if the word does contain a vowel') do
      anagram4 = Anagram.new("word1", "word2")
    expect(anagram4.check_vowel("o")).to(eq(true))
  end


end
