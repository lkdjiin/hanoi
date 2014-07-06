require 'spec_helper'

describe 'Game from start to win' do

  it 'works' do
    board = Board.new(3)
    game = Game.new(board)

    game.move from: 1, to: 3
    game.move from: 1, to: 2
    game.move from: 3, to: 2
    game.move from: 1, to: 3
    game.move from: 2, to: 1
    game.move from: 2, to: 3
    game.move from: 1, to: 3

    expect(game.win?).to eq true
  end
end
