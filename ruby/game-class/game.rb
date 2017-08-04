# 6.7 Solo Challenge: A Game Class
# David Skaggs - Golden Bears 2017
=begin
PROMPT: Create a word-guessing game that meets the following specs:
  - Assume your driver code will handle input and output as far as the user is concerned. In other words, write a class designed for a computer program to use, not one designed for a human to use directly, then use driver code to bridge the gap between human and Ruby object.
  - One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
  - Guesses are limited, and the number of guesses available is related to the length of the word.
  - Repeated guesses do not count against the user.
  - The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
  - The user should get a congratulatory message if they win, and a taunting message if they lose.

PSEUDOCODE:
-Business Interface:
  - Create and define a game class
    - Define an initialize method
      - Pass parameter of hangman_word (player 1 input)
      - Initialize instance variable that represents in dashes the length of the word.
        - Ex: "-----"

-User Interface:
  - Initiate loop do to print a series of strings:
    - Provide users a welcome message
    - Provide game rules
    - Ask users if they are ready to start the game
      - Break loop IF user enters 'start'
  - Print string asking player one to enter the hangman word
    - Store player one input in a variable and use 'noecho' to have the word not display on the screen (for cheating purposes)
      - Ex: require 'io/console'
      - Ex: player_1_word = STDIN.noecho(&:gets).chomp
    - Initialize new game instance and pass player one's hangman word as the argument
=end

# Business Logic
class HangMan
  attr_accessor :guess_count, :guessed_letters, :hangman_word, :word_dash_str
  attr_reader :game_over

  def initialize
    @hangman_word = hangman_word
    @game_over = false
    @guess_count = 0
    @guessed_letters = []
  end

  def welcome
    "Welcome to the Hangman game!"
  end

  def user_1_input(input)
    @hangman_word = input
  end

  def display_word_dash_str
    @word_dash_str = "-" * @hangman_word.length
    # @hangman_word.split("")
    # @word_dash_str = "-" * @hangman_word.length
    # @word_dash_str
  end

  def letter_guesses(letter)
      @guess_count += 1
      @hangman_word.split("").each_with_index do |hangman_word_split,index|
        if letter == hangman_word_split
          @word_dash_str[index] = letter
        end
      end
      puts "----------------------------------"
      puts "Remaning Guesses: #{@hangman_word.length - guess_count}"
      puts  "Guessed Letters: #{@guessed_letters.join("-")}"
      puts "'#{@word_dash_str}'"
      puts "----------------------------------"
  end

  def is_game_over
    if @word_dash_str == @hangman_word && @guess_count <= @hangman_word.length
      puts "PLAYER 2 WINS!"
      @game_over = true
    elsif @guess_count == @hangman_word.length
      puts "PLAYER 1 WINS!"
      @game_over = true
    end
  end

  def add_guess_input(letter)
    if !@guessed_letters.include?(letter)
      @guessed_letters << letter
    else
      puts "----------------------------------"
      puts "Letter Already Guessed! Try again!"
      @guess_count -= 1
    end
  end
end

# User Interface
puts "Welcome to the Hangman game!"
puts "----------------------------"

require 'io/console'
new_game = HangMan.new
puts "Player 1: Please enter a word: "
player_1_word = STDIN.noecho(&:gets).chomp.downcase

new_game.user_1_input(player_1_word)
new_game.display_word_dash_str

puts "-----------------------------------"
puts "PLAYER 2: Here is your word string:"
puts "** You have #{player_1_word.length} total guesses **"
puts "'#{new_game.display_word_dash_str}'"
puts "-----------------------------------"

loop do
   puts "Guess a letter:"
  individual_letter_guess = gets.chomp.downcase
  new_game.add_guess_input(individual_letter_guess)
  new_game.letter_guesses(individual_letter_guess)
  break if new_game.is_game_over == true
end