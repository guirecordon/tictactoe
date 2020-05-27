require_relative '../lib/board'
require_relative '../lib/player'

describe Player do
  let(:player) { Player.new }

  describe '#unique?' do
    it 'returns nil if the argument is in the array of the player' do
      player.arr_player1 = [1, 2, 3]
      expect(player.unique?(1)).to eql(nil)
    end
    it 'returns true if the argument is not in the array player' do
      player.arr_player1 = [1, 2, 3]
      expect(player.unique?(4)).to eql(true)
    end
  end

  describe '#player_array' do
    it 'returns arr_player1 for "Player 1"' do
      player.arr_player1 = [1, 2, 3]
      expect(player.player_array('Player 1')).to eql([1, 2, 3])
    end
  end

  describe '#player_totem' do
    it 'returns the totem for the player' do
      expect(player.player_totem('Player 1')).to eql('X')
    end
  end

  describe '#win?' do
    it 'returns true if the arr_player contains a streaks from winning_streaks' do
      player.arr_player1 = [1, 2, 3]
      expect(player.win?).to eql(true)
    end
  end
  describe ' #tie?' do
    it ' returns true if the total size of the players array is equal to 9' do
      player.arr_player1 = [1, 2, 7, 6, 8]
      player.arr_player2 = [3, 5, 4, 9]
      expect(player.tie?).to eql(true)
    end
  end
end
