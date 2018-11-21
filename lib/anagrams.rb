class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @matching_letters = []
  end

  def remove_special_chars(word)
    letters_only = word.downcase()
    if letters_only.gsub!(/[^A-Za-z]/, '') != nil
    end
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
    empty = []
    sorted1 = remove_special_chars(@word1)
    sorted2 = remove_special_chars(@word2)
    vowel_check1 = check_vowel(sorted1)
    vowel_check2 = check_vowel(sorted2)
    sorted1_array = sorted1.split('')
    sorted2_array = sorted2.split('')

    if vowel_check1 == false || vowel_check2 == false
      return "Both words must contain a vowel"
    end
    if vowel_check1 == true || vowel_check2 == true
      if sorted1_array.length == sorted2_array.length
        array3 = sorted1_array & sorted2_array
        return array3

        # sorted1_array.each do |letter1|
        #   sorted2_array.each do |letter2|
        #     if (letter1 == letter2)
        #       empty.push(letter1)
        #       return empty
        #     end
        #   end
        # end



        # return "lengths are equal"
      else return "length of words is not equal, therefore not anagrams!"
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
