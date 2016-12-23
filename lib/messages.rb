class Messages


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
# hardcoded
  end

  def wrong_start_input
      "You entered something wrong, please enter; p to play, i for instructions, q to quit"
  end
end
