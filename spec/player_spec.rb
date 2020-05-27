require_relative '../lib/board'
require_relative '../lib/player'

describe Player do
  let(:player) { Player.new }

  describe '#unique?' do
    it 'returns nil if the number choice already contained in one of the player\'s arrays' do
      player.arr_player1 = [1, 2, 3]
      expect(player.unique?(1)).to eql(nil)
    end
    it 'returns true if the argument is not contained in the player\'s array' do
      player.arr_player1 = [1, 2, 3]
      expect(player.unique?(4)).to eql(true)
    end
  end

  describe '#player_array' do
    it 'returns arr_player1 for \'Player 1\'' do
      player.arr_player1 = [1, 2, 3]
      expect(player.player_array('Player 1')).to eql([1, 2, 3])
    end

    it 'returns arr_player2 for \'Player 2\'' do
      player.arr_player2 = [4, 7, 9]
      expect(player.player_array('Player 2')).to eql([4, 7, 9])
    end
  end

  describe '#player_totem' do
    it 'returns X if player 1 is passed as argument' do
      expect(player.player_totem('Player 1')).to eql('X')
    end

    it 'returns O if player 2 is passed as argument' do
      expect(player.player_totem('Player 2')).to eql('O')
    end

  end

  describe '#win?' do
    it 'returns true if the arr_player contains the elements of a winning_streak' do
      player.arr_player1 = [1, 2, 3]
      expect(player.win?).to eql(true)
    end

    it 'returns true if the arr_player contains the elements of a winning_streak' do
      player.arr_player1 = [2, 5, 8]
      expect(player.win?).to eql(true)
    end

    it 'returns false if arr_player does not contain the elements of a winning_streak' do
      player.arr_player2 = [3, 5, 7, 9, 8]
      expect(player.win?).to eql(true)
    end


    it 'returns false if arr_player does not contain the elements of a winning_streak' do
      player.arr_player1 = [2, 4, 8, 3]
      expect(player.win?).to eql(false)
    end

    it 'returns false if arr_player does not contain the elements of a winning_streak' do
      player.arr_player2 = []
      expect(player.win?).to eql(false)
    end
  end

  describe '#tie?' do
    it 'returns true if the total size of the players array is equal to 9' do
      player.arr_player1 = [1, 2, 7, 6, 8]
      player.arr_player2 = [3, 5, 4, 9]
      expect(player.tie?).to eql(true)
    end

    it 'returns nil if the sum of the sizes of the player arrays does not amount to 9' do
      player.arr_player1 = [1, 2, 7, 6]
      player.arr_player2 = [3, 5, 4, 9]
      expect(player.tie?).to eql(nil)
    end

  end
end
