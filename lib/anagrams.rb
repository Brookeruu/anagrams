class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @matching_letters = []
  end

  def remove_special_chars(word)
    letters_only = word.downcase()
    letters_only = letters_only.gsub!(/[^A-Za-z]/, '')
    letters_only = letters_only.split('')
    letters_only = letters_only.sort()
    letters_only = letters_only.join()
  end


  def check_vowel(word)
    has_vowels = word.scan(/[aeiou]/)
    if has_vowels.empty?
      puts "Word must contain a vowel!"
      return false
    else
      return true
    end
  end
      # if letters_only == false
      #   puts "Your word must contain a vowel!"
      #   return false
      # end

  def find_anagram
    sorted1 = remove_special_chars(@word1)
    sorted2 = remove_special_chars(@word2)
    vowel_check1 = check_vowel(sorted1)
    vowel_check2 = check_vowel(sorted2)

    if vowel_check1 == false || vowel_check2 == false
      return "Both words much contain a vowel"
    end
    # if both have vowels then they are words
    # if sorted1 and sorted1 are words then compare to see if strings are equal
    #   if strings are equal, they are anagrams

  end

  def length_word


  end

  def output
    "words"
  end
end
