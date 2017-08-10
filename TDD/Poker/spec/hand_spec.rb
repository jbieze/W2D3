require "rspec"
require "hand"

describe "Hand" do

  subject(:hand) { Hand.new }

  let(:cards) do
    [double(:card0, :value => 10, :suit => :spades),
    double(:card1, :value => 11, :suit => :spades),
    double(:card2, :value => 12, :suit => :spades),
    double(:card3, :value => 13, :suit => :spades),
    double(:card4, :value => 14, :suit => :spades)]
  end

  it "is an array" do
    expect(hand.my_hand).to be_a(Array)
  end

  it "holds five cards" do
    expect(hand.take_hand(:card0, :card1, :card2, :card3, :card4).length).to eq(5)
  end

  it "detects straight flush" do
    expect(hand.straight_flush?).to be(true)
  end

  subject(:four) { Hand.new }
  let(:four.take_hand) do
    [double(:card0, :value => 13, :suit => :hearts),
    double(:card1, :value => 13, :suit => :diamonds),
    double(:card2, :value => 13, :suit => :clubs),
    double(:card3, :value => 13, :suit => :spades),
    double(:card4, :value => 14, :suit => :spades)]
  end
  it "detects four of a kind" do
    expect(:four.four_of_a_kind?).to eq(true)
  end

  it "detects a full house" do

  end

  it "detects a flush" do

  end

  it "detects a straight" do

  end

  it "detects three of a kind" do

  end

  it "detects two pair" do

  end

  it "detects a pair" do

  end


end
