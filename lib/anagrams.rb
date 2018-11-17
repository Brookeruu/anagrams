class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @matching_letters = []
  end

  def remove_specials(word)
    letters_only = word
    letters_only = letters_only.gsub!(/[^A-Za-z]/, '')
    letters_only = letters_only.split('')
    letters_only = letters_only.sort()
    letters_only = letters_only.join()
  end


  def check_vowel(word)
    letters_only = word.scan(/[aeiou]/)
    if letters_only.empty?
      return false
      puts "Word must contain a vowel!"
    else
      return true
    end
  end
      # if letters_only == false
      #   puts "Your word must contain a vowel!"
      #   return false
      # end

  def find_anagram
    sorted1 = remove_specials_sort(@word1)
    sorted2 = remove_specials_sort(@word2)
    # if both have vowels then they are words
    # if sorted1 and sorted1 are words then compare to see if strings are equal
    #   if strings are equal, they are anagrams

  end

  def output
    "words"
  end
end
