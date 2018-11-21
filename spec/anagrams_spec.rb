require 'rspec'
require 'pry'
require 'anagrams'

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
    anagram6 = Anagram.new("word1$", "Thss3#")
    expect(anagram6.find_anagram()).to(eq("Both words must contain a vowel"))
  end

  it('should return a NEW array with matching letters from both words, but not be anagrams') do
    anagram11 = Anagram.new("gator", "dog")
    expect(anagram11.find_anagram()).to(eq(["g", "o"]))
  end

  it('should return a NEW array with matching letters from both words, but not be anagrams (add special chars to test)') do
    anagram11 = Anagram.new("$bo ok!shelf", "folklo$&^re")
    expect(anagram11.find_anagram()).to(eq(["e", "f", "k", "l", "o"]))
  end

  it('should return a phrase if there are no matching letters') do
    anagram11 = Anagram.new("hobbit", "dwarf")
    expect(anagram11.find_anagram()).to(eq("Words are antigrams!"))
  end

  it('should return a phrase if words despite special characters are anagrams') do
    anagram11 = Anagram.new("D$a %ngE!r", "gA$%r^d)En")
    expect(anagram11.find_anagram()).to(eq("Words are anagrams!"))
  end

  it('should return a phrase for anagrams') do
    anagram11 = Anagram.new("DaNgER", "gArdeN")
    expect(anagram11.find_anagram()).to(eq("Words are anagrams!"))
  end

  it('should return a NEW array with matching letters of words that are not anagrams, but have same letter length') do
    anagram11 = Anagram.new("EnraGE", "daNgEr")
    expect(anagram11.find_anagram()).to(eq(["a", "e", "g", "n", "r"]))
  end

  it('should return matching letters of words that are not anagrams, but have same letter length') do
    anagram11 = Anagram.new("EnraGE", "daNgEr")
    expect(anagram11.find_anagram()).to(eq(["a", "e", "g", "n", "r"]))
  end

end
