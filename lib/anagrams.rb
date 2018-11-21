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

  def find_anagram
    sorted1 = remove_special_chars(@word1)
    sorted2 = remove_special_chars(@word2)
    vowel_check1 = check_vowel(sorted1)
    vowel_check2 = check_vowel(sorted2)

    if vowel_check1 == false || vowel_check2 == false
      return "Both words must contain a vowel"
    end
    if vowel_check1 == true || vowel_check2 == true
      if sorted1.split('').length == sorted2.split('').length
        return "lengths are equal"
      else return "not equal"
      end
    end
  end

  end
#
#   def length_word
#
#
#   end
#
#   def output
#     "words"
#   end
# end

# else return sorted1.split('').length
# end

# elsif sorted1.split('').length != sorted2.split('').length
# return "words are different lengths"
# end

# if sorted1 and sorted1 are words then compare to see if strings are equal
#   if strings are equal, they are anagrams
