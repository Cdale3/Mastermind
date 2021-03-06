class Messenger

  def opening_message
   "Welcome to MASTERMIND"
  end

  def start_gameflow
    "I have generated a beginner sequence with four elements
    made up of: (r)ed, (g)reen, (b)lue, and (y)ellow.
    Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def would_you_like_to_play_a_game
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def send_instructions
    "There is a combination of 4 colors, they can be repeated.
     You need to guess the order in which they are using r, b, g, y.
     Goodluck MASTERMIND!"
  end

  def wrong_length
    "your answer is too long or short, it must be a length of 4 digits"
  end

  def wrong_start_input(user_input)
      "#{user_input} is invalid, please enter; p to play, i for instructions, q to quit"
  end

  def entered_q_for_quit
    "If it's 'q' or 'quit' then exit the game"
  end

  def entered_c_to_cheat
    "If it's 'c' or 'cheat' then print out the current secret code"
  end

  def guessed_correctly
    "Congratulations! You guessed the sequence 'GRRB' in 8 guesses over 4 minutes, 22 seconds. Do you want to (p)lay again or (q)uit?" #add play again or quit command
  end

  def incorrect_guess_again
    "'RRGB' has 3 of the correct elements with 2 in the correct positions You've taken 1 guess" #add counter and tell user if they got any in the correct position, loop the game
  end
end
