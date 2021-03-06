require './lib/card'
class Guess
  attr_reader :response, :card, :feedback

  def initialize(response,card)
    @response = response
    @card = card
  end

  def correct?
    split_response = @response.split
    if  split_response[0] && split_response[2] == @card.suit && @card.value
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end
end
