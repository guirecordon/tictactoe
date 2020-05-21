require './lib/board'
require './lib/player'

describe Board do
  let(:boardo) { Board.new }

  describe '#valid?' do
    it 'returns true if argument is a number between 1 and 9' do
      expect(boardo.valid?(1)).to eql(true)
    end

    it 'returns nil if argument is not a number between 1 and 9' do
      expect(boardo.valid?(25)).to eql(nil)
    end
  end

  describe '#who_player' do
    it "returns 'Player 1' if argument is an odd number, 'Player 2' if even" do
      expect(boardo.who_player(5)).to eql('Player 1')
    end

    it "returns 'Player 1' if argument is an odd number, 'Player 2' if even" do
      expect(boardo.who_player(8)).to eql('Player 2')
    end
  end
end
