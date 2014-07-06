module Hanoi

  class Game

    def initialize(board)
      @board = board
    end

    def move(from: 1, to: 1)
      @board.move(from, to) if Rules.valid?(@board, from, to)
    end

    def win?
      Rules.win?(@board)
    end

    def position
      @board.position
    end
  end

end
