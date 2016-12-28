require 'minitest/autorun'
require 'minitest/pride'
require './lib/messenger'
require 'pry'

class MessengerTest < Minitest::Test

  def setup
    @messenger = Messenger.new
  end

  def test_sends_opening_message
    assert_equal "Welcome to MASTERMIND", @messenger.opening_message
  end

  def test_sends_gameflow_message
    assert_equal   "I have generated a beginner sequence with four elements
    made up of: (r)ed, (g)reen, (b)lue, and (y)ellow.
    Use (q)uit at any time to end the game.
    What's your guess?", @messenger.start_gameflow
  end

  def test_would_you_like_to_play_a_game
    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", @messenger.would_you_like_to_play_a_game
  end

  def test_do_you_see_instructions
    assert_equal "There is a combination of 4 colors, they can be repeated.
     You need to guess the order in which they are using r, b, g, y.
     Goodluck MASTERMIND!", @messenger.send_instructions
  end

  def test_gives_error_for_wrong_length
    assert_equal "your answer is too long or short, it must be a length of 4 digits", @messenger.wrong_length
  end

  def test_wrong_input_recieved
    user_input = "f"
    assert_equal "#{user_input} is invalid, please enter; p to play, i for instructions, q to quit", @messenger.wrong_start_input(user_input)
  end

  def test_entered_q_for_quit
    assert_equal "If it's 'q' or 'quit' then exit the game", @messenger.entered_q_for_quit
  end

  def test_entered_c_to_cheat
    assert_equal "If it's 'c' or 'cheat' then print out the current secret code", @messenger.entered_c_to_cheat
  end

  def test_guessed_correctly
    assert_equal "Congratulations! You guessed the sequence 'GRRB' in 8 guesses over 4 minutes, 22 seconds. Do you want to (p)lay again or (q)uit?", @messenger.guessed_correctly
  end

  def test_incorrect_guess_again
    assert_equal "'RRGB' has 3 of the correct elements with 2 in the correct positions You've taken 1 guess", @messenger.incorrect_guess_again
  end

end
