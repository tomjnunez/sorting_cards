require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_it_has_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal card, guess.card
  end

  def test_it_has_response
    card = Card.new("Jack", "Clubs")
    guess = Guess.new("Jack of Clubs", card)

    assert_equal "Jack of Clubs", guess.response
  end

  def test_it_is_correct
    card = Card.new("Jack", "Clubs")
    guess = Guess.new("Jack of Clubs", card)

    assert_equal true, guess.correct?
  end

  def test_it_has_feedback
    card = Card.new("Jack", "Clubs")
    guess = Guess.new("Jack of Clubs", card)
    
    assert_equal "Correct!", guess.feedback

  end
end
