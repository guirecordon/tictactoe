#!/usr/bin/env ruby

require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

class TicTacToe
  attr_reader :numbers
  attr_accessor :pick, :board
  def initialize
    @numbers = (1..9).to_a
    @board = Board.new
    @player = Player.new
    @pick = pick
  end

  def prompt_message(player)
    puts "#{player}: pick a number from the board:"
  end

  def display
    print "\n#{@numbers[0]} | #{@numbers[1]} | #{@numbers[2]}
---------\n#{@numbers[3]} | #{@numbers[4]} | #{@numbers[5]}
---------\n#{@numbers[6]} | #{@numbers[7]} | #{@numbers[8]}\n\n"
  end

  def play # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity
    display
    round = 1
    while round <= @numbers.size
      player = @board.who_player(round)
      until @board.valid?(@pick) and @player.unique?(@pick)
        prompt_message(player)
        @pick = gets.chomp.to_i
        puts 'Choose a number between 1 and 9' unless @board.valid?(@pick)
        puts 'Choice already picked' unless @player.unique?(@pick)
      end
      @player.player_array(player) << @pick
      @numbers[@pick - 1] = @player.player_totem(player)
      puts "You choose number #{@pick} #{player}"
      puts "These are your choices #{player} #{@player.player_array(player)}"
      display
      puts "#{player} wins!!!" if @player.win?
      puts "It's a tie, play again, ok? type main" if @player.tie?
      break if @player.win? or @player.tie?

      round += 1
    end
  end
end

game = TicTacToe.new
game.play
