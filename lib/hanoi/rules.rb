module Hanoi::Rules
  def self.valid?(board, from, to)
    return false if board.position[from - 1].empty?
    return true if board.position[to - 1].empty?
    if board.position[from - 1][0] < board.position[to - 1][0]
      true
    else
      false
    end
  end

  def self.win?(board)
    if board.position[0].empty? && board.position[1].empty?
      true
    else
      false
    end
  end
end
