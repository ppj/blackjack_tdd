class Deck
  attr_accessor :cards, :count

  def initialize(c = 1)
    @cards = []
    @count = c
  end

end