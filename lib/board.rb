class Board
  attr_reader :numbers
  def initialize
    @numbers = (1..9).to_a
    @player = Player.new
    @player1 = 'Player 1'
    @player2 = 'Player 2'
  end

  def valid?(pick)
    return true if @numbers.any?(pick) and pick.is_a? Integer
  end

  def who_player(i_round)
    i_round.odd? ? @player1 : @player2
  end
end
