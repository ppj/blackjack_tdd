require_relative './card'

class Deck
  attr_accessor :cards, :count

  def initialize(c = 1)
    @count = c
    decks_of_cards = ["\u2660", "\u2665", "\u2663", "\u2666"].product(["A", Array(2..10).map {|v| "#{v}"}, "J", "Q", "K"].flatten) * @count

    @cards = decks_of_cards.map do |card|
      suite = card[0]
      value = card[1]
      Card.new(suite, value)
    end


  end

  def shuffle!
    cards.shuffle!
  end

  def deal
    cards.pop
  end

end