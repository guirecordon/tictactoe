class Player
  attr_accessor :pick, :arr_player1, :arr_player2, :player1, :player2
  def initialize
    @arr_player1 = []
    @arr_player2 = []

    @pick = pick
    @player1 = 'Player 1'
    @player2 = 'Player 2'
  end

  def unique?(pick)
    return true if @arr_player1.none?(pick) and @arr_player2.none?(pick)
  end

  def player_array(player)
    if player == @player1
      @arr_player1
    else
      @arr_player2
    end
  end

  def player_totem(player)
    if player == @player1
      'X'
    else
      'O'
    end
  end
end
