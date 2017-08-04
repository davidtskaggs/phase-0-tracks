# 6.7 Solo Challenge: A Game Class
# David Skaggs - Golden Bears 2017

require_relative 'game'

describe HangMan do
  let(:new_game) { HangMan.new("devbootcamp") }

  it "prints a welcome message" do
    expect(new_game.welcome).to eq "Welcome to the Hangman game!"
  end

  it "converts the hangman word to a readable string of dashes" do
    expect(new_game.display_word_dash_str).to eq "-----------"
  end
end