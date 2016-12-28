require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_begin'



class GameTest < Minitest::Test

  def test_it_exists
    game = Game.new
    assert game
  end

  def test_it_has_a_code
    game = Game.new
    assert_equal 4, game.code.length
  end

  def test_it_contains_color
    skip
    game = Game.new

  end
end
