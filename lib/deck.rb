require './lib/guess'
class Deck
  attr_reader :cards_array
  def initialize(cards_array)
    @cards_array = cards_array
  end

  def cards
    @cards_array
  end

  def count
    @cards_array.count
  end

  def sort

    card_worth = {"2" => 2,
                  "3" => 3,
                  "4" => 4,
                  "5" => 5,
                  "6" => 6,
                  "7" => 7,
                  "8" => 8,
                  "9" => 9,
                  "10" => 10,
                  "Jack" => 11,
                  "Queen" => 12,
                  "King" => 13,
                  "Ace" => 14,
                  "Clubs" => 0.1,
                  "Diamonds" => 0.2,
                  "Hearts" => 0.3,
                  "Spades" => 0.4}

      n = @cards_array.length
    loop do
      swapped = false

      (n-1).times do |card|
        if card_worth[@cards_array[card].value] > card_worth[@cards_array[card+1].value]
          @cards_array[card], @cards_array[card+1] = @cards_array[card+1], @cards_array[card]
          swapped = true

        elsif card_worth[@cards_array[card].value] == card_worth[@cards_array[card+1].value]
          if card_worth[@cards_array[card].suit] > card_worth[@cards_array[card+1].suit]
          @cards_array[card], @cards_array[card+1] = @cards_array[card+1], @cards_array[card]
          swapped = true
          end
        end
      end

      break if not swapped
    end

    @cards_array
  end
end
