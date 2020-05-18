class Player
  attr_accessor :arr_player1, :arr_player2, :player1, :player2
  def initialize
    @board = Board.new
    @player1 = 'Player 1'
    @player2 = 'Player 2'
  end

  def arr_player1
    []
  end

  def arr_player2
    []
  end

  def unique?(pick)
    return true if @board.arr_player1.none?($pick) and @board.arr_player2.none?($pick)
  end

  def player_array(player)
    if player == @player1
      @board.arr_player1
    else
      @board.arr_player2
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
