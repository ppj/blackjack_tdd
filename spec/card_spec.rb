require 'rspec'
require_relative '../lib/card'

describe Card do
  it "needs to have a suite & a value" do
    expect{Card.new}.to raise_error
    expect{Card.new("", "")}.to raise_error
    expect{Card.new("\u2660", "8")}.to_not raise_error
  end

  it "has the same value as a face card" do
    (2..10).each do |val|
      expect(Card.new("\u2660", "#{val}").value).to be == val
    end
  end

  it "has value 10 for a 'Jack', 'Queen', or 'King'" do
    expect(Card.new("\u2665", "K").value).to be 10
  end

  it "has value 11 for an Ace" do
    expect(Card.new("\u2663", "A").value).to be 11
  end

end