require './lib/messages'

message = Messages.new

message.opening_message
message.would_you_like_to_play_a_game

user_input = gets.chomp.downcase

if user_input == "p"
  load './lib/start_game'
elsif user_input == "i"
  puts message.send_instructions
  load './lib/mastermind.rb'
elsif user_input == "q"
  exit
else
  puts message.wrong_start_input
  load './lib/mastermind.rb'
end
