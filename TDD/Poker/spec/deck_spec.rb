require 'rspec'
require 'deck'

describe "Deck" do
  subject(:deck) { Deck.new }

  it "is an array" do
    expect(deck.cards).to be_an(Array)
  end

  it "has 52 cards" do
    expect(deck.cards.count).to eq(52)
  end

  it "has one card of each value/suit combination" do
    expect(deck.cards.map { |card| [card.value, card.suit] }.uniq.count).to eq(deck.cards.count)
  end
end
