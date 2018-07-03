require './lib/guess'
class Deck
  def initialize(cards_array)
    @cards_array = cards_array
  end

  def cards
    @cards_array
  end

  def count
    @cards_array.count
  end
end
