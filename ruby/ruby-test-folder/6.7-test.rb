class HangMan
  attr_accessor :hangman_word, :player2_letters

  def initialize
    @player2_letters = []
  end
  def player_1_word(word)
    @hangman_word = word
  end

  def player_2_guesses(letter)
    @player2_letters << letter
  end
end

puts "Player 1: Give us a word!"
# player_1_input = gets.chomp
# game.player_1_word(player_1_input)

puts "Player 2: Give a letter!"
