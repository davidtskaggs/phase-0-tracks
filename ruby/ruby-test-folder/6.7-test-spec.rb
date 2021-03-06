# 6.7 Solo Challenge: A Game Class
# David Skaggs - Golden Bears 2017
# RSpec Tests for game.rb

require_relative '6.7-test'
describe HangMan do
  let(:new_game) { HangMan.new }

  it 'takes user input'  do
    allow($stdin).to receive(:gets).and_return('hello')
    player_1_input = $stdin.gets
    expect(player_1_input).to eq ('hello')
  end

  it "takes and stores user input" do
    allow($stdin).to receive(:gets).and_return('a')
    player2_letter = $stdin.gets
    expect(player2_letter).to eq ("a")
  end
end