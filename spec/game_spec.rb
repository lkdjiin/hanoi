require 'spec_helper'

describe Game do

  before do
    @board = Board.new(3)
  end

  context 'legal moves' do

    it 'moves from peg#1 to peg#2' do
      game = Game.new(@board)

      game.move(from: 1, to: 2)

      expect(game.position).to eq [ [3, 2], [1], [] ]
    end

  end

  context 'illegal moves' do

    it 'silently does nothing' do
      game = Game.new(@board)

      game.move(from: 2, to: 3)

      expect(game.position).to eq [ [3, 2, 1], [], [] ]
    end

  end

  describe 'win' do

    it 'recognizes the winning position' do
      @board.position = [ [], [], [3, 2, 1] ]
      game = Game.new(@board)

      expect(game.win?).to eq true
    end

    it 'knows that a position is not a winning one' do
      @board.position = [ [], [1], [3, 2] ]
      game = Game.new(@board)

      expect(game.win?).to eq false
    end

  end

end
