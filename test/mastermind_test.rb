require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MyMessenger;end
class GameTest < MiniTest::Test

  def test_it_has_a_messenger
    mastermind = Mastermind.new(messenger: MyMessenger)
    assert_equal MyMessenger, mastermind.messenger.class
  end

  def test_it_defaults_to_messenger
    mastermind = Mastermind.new
    assert_equal Messenger, mastermind.messenger.class
  end
end
