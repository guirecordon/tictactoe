class Board
  attr_accessor :player, :numbers
  def initialize
    @numbers = (1..9).to_a
    @player = Player.new
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

  def display
    print "\n#{@numbers[0]} | #{@numbers[1]} | #{@numbers[2]}\n----------\n#{@numbers[3]} | #{@numbers[4]} | #{@numbers[5]}\n----------\n#{@numbers[6]} | #{@numbers[7]} | #{@numbers[8]}\n\n"
  end

  def prompt_message(player)
    puts "#{player}: pick a number from the board:"
  end

  def valid?(pick)
    return true if @numbers.any?(pick) and pick.is_a? Integer
  end

  def win?
    @winning_streaks.each do |x|
      if (@player.player_array(player) & x).to_a.sort == x
        puts 'Player 1 wins!'
        return true
      elsif (@player.player_array(player) & x).to_a.sort == x
        puts 'Player 2 wins!'
        return true
      end
    end
    false
  end

  def tie?
    if @player.arr_player1.size + @player.arr_player2.size == 9 and win? == false
      puts "It's a tie! Play again."
      true
    else
      false
    end
  end

  def who_player(i_round)
    if i_round.even?
      @player2
    else
      @player1
    end
  end
end
