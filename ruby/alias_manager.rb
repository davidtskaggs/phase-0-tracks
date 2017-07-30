# DBC Week 5
# David Skaggs
# 5.5 Solo Challenge: Manipulating Strings with Iteration

=begin
Instructions:
  - pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:
    1. Swapping the first and last name.
    2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end

# Pseudocode:
# Input: String
# Output: String

=begin
Business Logic

- define method that takes a string, and returns a lower case array of individual characters
- create a method that has one parameter; When called, this method should take a array as an argument.
- define a string variable that is equal to all vowels
- create map! block to iterate through the letters in the array
  - IF the letter equal "z", replace it with a 'b'
  - ELSIF the letter equals a "u", replace it with an "a"
  - ELSIF the letter is a consonant, call the .next method
  - ELSE it is going to replace the vowel with the next vowel in the string variable
  - each block then returns an array of string letters
- define method that takes array of string letters
  - this method returns a string with the first letter in each word capitalized
=end

def alias_generator(input)
  vowel = 'aeiou'
  consonant = "bcdfghjklmnpqrstvwxyz"
  input_reverse = input.downcase.split(" ").reverse.join(" ")
  alias_name = []

  i = 0
  while i < input_reverse.length
  if vowel.index(input_reverse[i]) != nil
    if input_reverse[i] == "u"
      alias_name << "a"
    else
      alias_name << vowel[vowel.index(input_reverse[i])+ 1]
    end
  elsif input_reverse[i] == " "
    alias_name << " "
  else
    if input_reverse[i] == "z"
      alias_name << "a"
    else
      alias_name << consonant[consonant.index(input_reverse[i])+1]
    end
  end
  i += 1
  $name_hash[input] = alias_name.join("")
  end
end

loop do

  name = gets.chomp

  break if name == "quit"

    alias_generator(name)
end
puts
puts "Alias Generator Report:"
puts
$name_hash.each do |key, value|
      puts "#{value} is also known as #{key}."
      puts "--------------------------------------------"
    end