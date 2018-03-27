require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup
    @game = Game.new()
  end

  def test_scissors_win
    assert_equal( "scissors wins", @game.scissors_win())
  end

  def test_what_wins__s_p
    assert_equal( "scissors wins", @game.what_wins("paper", "scissors"))
  end

  def test_what_wins__p_r
    assert_equal( "paper wins", @game.what_wins("rock", "paper"))
  end

  def test_what_wins__r_s
    assert_equal( "rock wins", @game.what_wins("scissors", "rock"))
  end

  def test_what_wins__draw
    assert_equal( "draw, go again", @game.what_wins("scissors", "scissors"))
  end

  def test_who_wins
    assert_equal("Player 1", @game.who_wins)
  end

end
