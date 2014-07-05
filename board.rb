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

end
