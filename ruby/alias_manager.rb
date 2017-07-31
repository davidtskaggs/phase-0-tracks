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
# Business Logic
$name_hash = {}

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
      alias_name << input_reverse[i+1].capitalize
    else
      if input_reverse[i] == "z"
        alias_name << "a"
      else
        alias_name << consonant[consonant.index(input_reverse[i])+1]
      end
    end
    i += 1
    alias_name[0].capitalize!
    $name_hash[input] = alias_name.join("")
  end
end

# User Interface
puts "Welcome to the Alias Name Generator"
puts "___________________________________________________________"
puts "Overview: Enter name(s) to receive a report on Alias Names"
puts
puts "Instructions:"
puts "- Search by First Name + Last name"
puts "- Enter multiple names by pressing the 'return' key"
puts "- When search is complete, type 'quit' + 'return' to exit"
puts
puts "- Example: Enter name(s):"
puts "            Michael Bluth"
puts "            Adam Pally"
puts "            quit"
puts "___________________________________________________________"
puts

puts "Enter name(s):"

loop do
  name = gets.chomp
  break if name == "quit"
  alias_generator(name)
end

puts
puts "*---------------------------*"
puts "   Alias Generator Report:"
puts
puts "      HIGHLY-CLASSIFIED"
puts "*---------------------------*"
puts
puts "________________________________"

i = 1
$name_hash.each do |key, value|
      puts "#{i}:"
      puts "Alias Name: '#{value}'"
      puts "Confidental Name: #{key.upcase}"
      puts "________________________________"
      i += 1
    end
puts
puts
puts "******************************************"
puts "IMPORTANT: This information is Top Secret!"
puts "******************************************"
puts "__________________________________________"