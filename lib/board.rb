class Board
  attr_accessor :player, :numbers, :arr_player1, :arr_player2
  def initialize
    @numbers = (1..9).to_a
    @player = Player.new
  end

  def display
    print "\n#{@numbers[0]} | #{@numbers[1]} | #{@numbers[2]}
---------\n#{@numbers[3]} | #{@numbers[4]} | #{@numbers[5]}
---------\n#{@numbers[6]} | #{@numbers[7]} | #{@numbers[8]}\n\n"
  end

  def prompt_message(player)
    puts "#{player}: pick a number from the board:"
  end

  def valid?(pick)
    return true if @numbers.any?(pick) and pick.is_a? Integer
  end

  def who_player(i_round)
    if i_round.even?
      'player2'
    else
      'player1'
    end
  end
end
