require 'rspec'
require_relative '../lib/deck'

describe Deck do
  context "when starting a new game" do

    it 'has at least 1 deck' do
      expect(subject.count).to be 1
      expect{Deck.new(-3).count}.to raise_error(ArgumentError)
      expect(Deck.new(3).count).to be 3
    end

    it 'has at least 52 cards' do
      expect(subject.cards).to be_kind_of Array
      expect(subject.cards.size).to be 52
    end

    it "can be shuffled" do
      unshuffled_cards = Array.new(subject.cards)
      expect(subject.shuffle!).to_not be == unshuffled_cards
    end

  end

  context "during a game" do
    before(:all) do
      @deck = Deck.new(4)
    end

    it "is used to deal a card" do
      expect(@deck.deal).to be_kind_of Card
      expect{@deck.deal}.to change{@deck.cards.length}.by(-1)
    end

  end

end