require 'rspec'
require 'card'

describe "Card" do

  subject(:ace_of_spades) { Card.new(14, :spades) }

  it "has a value" do
    expect(ace_of_spades.value).to eq(14)
  end

  it "has a suit" do
    expect(ace_of_spades.suit).to eq(:spades)
  end

end
