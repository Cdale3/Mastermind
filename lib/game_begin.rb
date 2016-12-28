require './lib/messenger'
require 'pry'
class Game
  attr_reader :code
  def initialize

  end


  def does_it_start
      print messenger.start_gameflow
  end

  def code
    a = ["r", "b", "g", "y", "r", "b", "g", "y", "r", "b", "g", "y", "r", "b", "g", "y"]
    generate = a.sample(4)
    @code = generate.join
  end

  def sees_player_input
    player_input = gets.chomp.downcase
    if player_input.length != 4
      puts messenger.wrong_length
    end
   end

   def colors
   end
end
