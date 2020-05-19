class Player
  attr_accessor :arr_player1, :arr_player2, :player1, :player2, :board, :pick
  def initialize
    # @board = Board.new
    @player1 = 'Player 1'
    @player2 = 'Player 2'
    @arr_player2 = []
    @arr_player1 = []
  end

  def arr_player1one
    @arr_player1
  end

  def arr_player2two
    @arr_player2
  end

  def unique?(pick)
    return true if @arr_player1.none?(pick) and @arr_player2.none?(pick)
  end

  def player_array(player)
    if player == 'player1'
      @arr_player1
    else
      @arr_player2
    end
  end

  def player_totem(player)
    if player == 'player1'
      'X'
    else
      'O'
    end
  end
end
