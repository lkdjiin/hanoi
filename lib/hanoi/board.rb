module Hanoi

  class Board

    def initialize(number_of_pieces)
      @pegs = [ (1..number_of_pieces).to_a.reverse, [], [] ]
    end

    def position
      @pegs
    end

    def position=(pegs)
      @pegs = pegs
    end

    def eval
      @pegs[1].reduce(0, :+) + 2 * @pegs[2].reduce(0, :+)
    end

    def move(from, to)
      piece = @pegs[from - 1].pop
      @pegs[to - 1].push(piece)
    end
  end

end
