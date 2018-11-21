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
    expect(anagram5.find_anagram()).to(eq("Both words must contain a vowel"))
  end

  it('should return a phrase if the either word do not contain a vowel') do
      anagram6 = Anagram.new("word1$", "Thss3#")
    expect(anagram6.find_anagram()).to(eq("Both words must contain a vowel"))
  end

  # it('should return a phrase if the length of the words are equal') do
  #     anagram7 = Anagram.new("word1$", "This3#@")
  #   expect(anagram7.find_anagram()).to(eq("lengths are equal"))
  # end

  # it('should return a phrase if the length of the words are not equal') do
  #     anagram8 = Anagram.new("word!", "words*")
  #   expect(anagram8.find_anagram()).to(eq("length of words is not equal, therefore not anagrams!"))
  # end

  it('should return an array matching letters from both words') do
      anagram9 = Anagram.new("words!", "sword#4")
    expect(anagram9.find_anagram()).to(eq(["d", "o", "r", "s", "w"]))
  end

  it('should return a NEW array matching letters from both words') do
      anagram10 = Anagram.new("words", "sword")
    expect(anagram10.find_anagram()).to(eq(["d", "o", "r", "s", "w"]))
  end

  it('should return a NEW array with common letters from both words, but not be anagrams') do
      anagram11 = Anagram.new("gator", "dog")
    expect(anagram11.find_anagram()).to(eq(["g", "o"]))
  end

  it('should return a NEW array with common letters from both words, but not be anagrams (add special chars to test)') do
      anagram11 = Anagram.new("$bo ok!shelf", "folklo$&^re")
    expect(anagram11.find_anagram()).to(eq(["e", "f", "k", "l", "o"]))
  end


end
