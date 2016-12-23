require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class GameTest < MiniTest::Test

  def test_it_can_read_game
    game = Game.new
  end
end
