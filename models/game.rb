class Game
  attr_reader :winner

  def initialize()
    # @winner = "nobody"
  end

  def scissors_win()
    return "scissors wins"
  end

  def paper_win()
    return "paper wins"
  end

  def rock_win()
    return "rock wins"
  end

  def draw()
    return "it was a draw"
  end

 # hand1 is giving a string e.g. paper, player2 is giving a string e.g. scissors.
 # @game.what_wins("paper", "scissors")
  def what_wins(hand1, hand2)

    if hand1 == "paper" && hand2 == "scissors"
      @winner = "Player 1 was"
      result = scissors_win()
    elsif hand1 == "scissors" && hand2 == "paper"
      @winner = "Player 2 was"
      result = scissors_win()
    elsif hand1 == "rock" && hand2 == "paper"
      @winner = "Player 1 was"
      result = paper_win()
    elsif hand1 == "paper" && hand2 == "rock"
      @winner = "Player 2 was"
      result = paper_win()

    elsif hand1 == "rock" && hand2 == "scissors"
      @winner = "Player 1 was"
      result = rock_win()
    elsif hand1 == "scissors" && hand2 == "rock"
      @winner = "Player 2 was"
      result = rock_win()

    elsif hand1 == hand2
      @winner = "Neither of you were"
      result = draw()

    # elsif hand1 == "rock" && hand2 == "rock"
    #   @winner = "Neither of you were"
    #   result = draw()
    # elsif hand1 == "scissors" && hand2 == "scissors"
    #   @winner = "Neither of you were"
    #   result = draw()
    # elsif hand1 == "paper" && hand2 == "paper"
    #   @winner = "Neither of you were"
    #   result = draw()
    end

    return result
  end


end
