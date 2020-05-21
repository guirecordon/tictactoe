class Player
  attr_reader :numbers
  attr_writer :arr_player1, :arr_player2
  def initialize
    @player1 = 'Player 1'
    @player2 = 'Player 2'
    @arr_player2 = []
    @arr_player1 = []
    @winning_streaks =
      [[1, 2, 3],
       [4, 5, 6],
       [7, 8, 9],
       [1, 4, 7],
       [2, 5, 8],
       [3, 6, 9],
       [1, 5, 9],
       [3, 5, 7]]
  end

  def unique?(pick)
    return true if @arr_player1.none?(pick) and @arr_player2.none?(pick)
  end

  def player_array(player)
    player == @player1 ? @arr_player1 : @arr_player2
  end

  def player_totem(player)
    player == @player1 ? 'X' : 'O'
  end

  def win?
    @winning_streaks.each do |streaks|
      return true if (@arr_player1 & streaks).to_a.sort == streaks
      return true if (@arr_player2 & streaks).to_a.sort == streaks
    end
    false
  end

  def tie?
    return true if @arr_player1.size + @arr_player2.size == 9 and win? == false
  end
end
