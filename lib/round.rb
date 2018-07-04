require './lib/guess'
require './lib/card'

class Round
attr_reader :deck, :guesses, :current_card, :converted_hash, :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = deck.cards_array[0]
    @converted_hash = ""
    @number_correct = 0
    @total_guesses = 0
  end

  def record_guess(hash)
    @converted_hash = "#{hash[:value]} of #{hash[:suit]}"
    new_guess = Guess.new(@converted_hash, @current_card)
    @guesses << new_guess
    @total_guesses += 1
    if new_guess.correct?
      @number_correct += 1
    end

    @deck.cards_array.shift
    @current_card = deck.cards_array[0]
  end

  def percent_correct
    (@number_correct / @total_guesses.to_f) * 100
  end
end
