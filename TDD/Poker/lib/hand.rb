require_relative "card"
class Hand
attr_reader :my_hand


  def initialize
    @my_hand = []
  end

  def take_hand(card0, card1, card2, card3, card4)
    @my_hand << card0 << card1 << card2 << card3 << card4
  end

  def straight_flush?
    hand.sort_by(value)
    base_val = hand[0].value
    expect(hand[1].value).to eq(base_val + 1)
    expect(hand[2].value).to eq(base_val + 2)
    expect(hand[3].value).to eq(base_val + 3)
    expect(hand[4].value).to eq(base_val + 4)
    expect(hand[0].suit).to eq(hand[1].suit)
    expect(hand[1].suit).to eq(hand[2].suit)
    expect(hand[2].suit).to eq(hand[3].suit)
    expect(hand[3].suit).to eq(hand[4].suit)
  end

  def four_of_a_kind?
    match_array = [@my_hand[0].value]
    @my_hand[1..-1].each do |card|
      match_array << card.value if card.value == @my_hand[0].value
    end
    return true if match_array.length == 4
    false
  end

  def full_house?
  end

  def flush?

  end

  def straight?
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def one_pair?
  end

  def high_card
  end
end
