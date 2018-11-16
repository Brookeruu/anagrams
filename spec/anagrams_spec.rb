require 'rspec'
require 'pry'
require 'anagrams'

describe('#anagrams') do
  it('should receive a word and return the word all non-letter characters removed') do
      word = Anagram.new('*wor-ds%')
    expect(anagram_finder("*wor-ds%")).to(eq.("words"))
  end
end
