require 'rspec'
require_relative '../lib/deck'

describe "A Deck" do
  context "when starting a new game" do

    before(:all) do
      @deck = Deck.new
    end

    it 'has at least 1 deck' do
      expect(@deck.count).to be 1
    end

    it 'has as many decks as specified' do
      expect(Deck.new(4).count).to be 4
    end

    it 'has cards' do
      expect(@deck.cards).to be_kind_of Array
    end

  end


end