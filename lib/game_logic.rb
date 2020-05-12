class GameLogic
  def check
    puts 'Choose a new number' if @arr_player1.any?(pick1) || @arr_player2.any?(pick1)
  end
end
