require './lib/messenger'
class Mastermind
attr_reader :messenger
  def initialize(messenger: Messenger)
    @messenger = messenger.new
  end

  def run(first_time: true)
    puts messenger.opening_message if first_time
    puts messenger.would_you_like_to_play_a_game

    user_input = gets.chomp.downcase

    if user_input == "p"
      start_game
    elsif user_input == "i"
      instructions
    elsif user_input == "q"
      quit
    else
      bad_input(user_input)
    end
  end

  def start_game
    end

  def instructions
    puts messenger.send_instructions
    run(first_time: false)
  end

  def quit
    exit
  end

  def bad_input(user_input)
    puts messenger.wrong_start_input(user_input)
    run(first_time: false)
  end

end


if __FILE__ == $0
  Mastermind.new.run
end
