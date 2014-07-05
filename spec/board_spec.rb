require './board'

describe Board do

  before { @board = Board.new(3) }

  it 'has a position' do
    expect(@board.position).to eq [ [3, 2, 1], [], [] ]
  end

  it 'accepts a position' do
    @board.position = [ [], [3], [2, 1] ]
    expect(@board.position).to eq [ [], [3], [2, 1] ]
  end

  describe 'position evalution' do

    specify { expect(@board.eval).to eq 0 }

    specify do
      @board.position = [ [], [3], [2, 1] ]
      expect(@board.eval).to eq 9
    end

    specify do
      @board.position = [ [], [], [3, 2, 1] ]
      expect(@board.eval).to eq 12
    end

  end

end
