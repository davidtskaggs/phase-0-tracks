# 6.7 Solo Challenge: A Game Class
# David Skaggs - Golden Bears 2017
# RSpec Tests for game.rb

require_relative 'game'

describe HangMan do
  let(:new_game) { HangMan.new }
  it 'takes player 1 input (word)'  do
    allow($stdin).to receive(:gets).and_return('hello')
    player_1_input = $stdin.gets
    expect(player_1_input).to eq ('hello')
  end

  it "takes player 2 input (letter)" do
    allow($stdin).to receive(:gets).and_return('a')
    player2_letter = $stdin.gets
    expect(player2_letter).to eq ("a")
  end

  it "Welcomes users to the game " do
    expect(new_game.welcome).to eq "Welcome to the Hangman game!"
  end
end