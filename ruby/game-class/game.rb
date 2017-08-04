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
  attr_accessor :guess_count
  attr_reader :game_over, :word_dash_str

  def initialize(hangman_word)
    @hangman_word = hangman_word
    @word_dash_str = "-" * hangman_word.length
    @game_over = false
    @guess_count = 1
  end

  def display_word_dash_str
    @word_dash_str
  end

  def letter_guesses(letter)
    @guess_count += 1
    @hangman_word.split("").each_with_index do |hangman_word_split,index|
      if letter == hangman_word_split
        @word_dash_str[index] = letter
      end
    end
    puts @word_dash_str
  end

  def is_game_over
    if @word_dash_str == @hangman_word && @guess_count <= @hangman_word.length
      puts "Player 2: You Win!"
      @game_over = true
    elsif @guess_count == @hangman_word.length
      puts "Player 1 Wins!"
      @game_over = true
    end
  end
end

# User Interface

# loop do
  puts "Welcome to the Hangman game!"
  puts "-------------------------------------------------"
  puts "RULES:"
  puts
  puts "PLAYER 1:"
  puts "- Enter a word to start the game!"
  puts
  puts "PLAYER 2:"
  puts "- Take guesses at the word (one letter at a time!)"
  puts "- We will provide the length of the hangman word (EX: '-----')"
  puts "- You will have the exact amount of guesses as the length of the word"
  puts "- If a correct letter is guessed, we will update the Hangman to reflect the progress"
  puts "-------------------------------------------------"
  puts "HOW TO WIN..."
  puts
  puts "-If Player 2 guesses the word before they run out of guesses, then Player 2 wins! "
  puts "-Otherwise, Player 1 wins!"
  puts "-------------------------------------------------"
  puts "Ready to get started? (enter 'start' to continue)"
  puts "-------------------------------------------------"

require 'io/console'
puts "Player 1: Please enter a word: "
player_1_word = STDIN.noecho(&:gets).chomp

new_game = HangMan.new(player_1_word)
new_game.display_word_dash_str

puts
puts "-----------------------------------"
puts "PLAYER 2: Here is your word string:"
puts "** You have #{player_1_word.length} total guesses **"
puts
p new_game.display_word_dash_str
puts "-----------------------------------"

loop do
  puts "Guess a letter:"
  individual_letter_guess = gets.chomp
  new_game.letter_guesses(individual_letter_guess)
  break if new_game.is_game_over == true
end