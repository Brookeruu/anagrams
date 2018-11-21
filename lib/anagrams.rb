class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
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
    sorted1 = remove_special_chars(@word1)
    sorted2 = remove_special_chars(@word2)
    vowel_check1 = check_vowel(sorted1)
    vowel_check2 = check_vowel(sorted2)
    sorted1_array = sorted1.split('')
    sorted2_array = sorted2.split('')

    if vowel_check1 == false || vowel_check2 == false
      return "Both words must contain a vowel"
    end
    if vowel_check1 == true && vowel_check2 == true
      if sorted1_array.length == sorted2_array.length
        matching = sorted1_array & sorted2_array
        if matching.length == sorted1_array.length && matching.length == sorted2_array.length
          return "Words are anagrams!"
        else
          return "These are not anagrams, but have matching letters: " + matching.join(' ')
        end
      else matching = sorted1_array & sorted2_array
        if matching == []
          return "Words are antigrams!"
        else
          return "These are not anagrams, but have matching letters: " + matching.join(' ')
        end
      end
    end
  end

end
