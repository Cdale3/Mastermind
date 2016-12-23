require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'
require 'pry'

class MessagesTest < Minitest::Test

  def setup
    @message = Messages.new
  end

  def test_sends_opening_message
    assert_equal "Welcome to MASTERMIND", @message.opening_message
  end

  def test_sends_gameflow_message
    assert_equal   "I have generated a beginner sequence with four elements
    made up of: (r)ed, (g)reen, (b)lue, and (y)ellow.
    Use (q)uit at any time to end the game.
    What's your guess?", @message.start_gameflow
  end

  def test_would_you_like_to_play_a_game
    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", @message.would_you_like_to_play_a_game
  end

  def test_do_you_see_instructions
    assert_equal "There is a combination of 4 colors, they can be repeated.
     You need to guess the order in which they are using r, b, g, y.
     Goodluck MASTERMIND!", @message.send_instructions
  end

  def test_gives_error_for_wrong_length
    assert_equal "your answer is too long or short, it must be a length of 4 digits", @message.wrong_length
  end

  def test_wrong_input_recieved
    assert_equal   "You entered something wrong, please enter; p to play, i for instructions, q to quit", @message.wrong_start_input


  end
end
