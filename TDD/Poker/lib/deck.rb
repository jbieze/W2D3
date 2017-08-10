require_relative 'card'

class Deck

  VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14].freeze
  SUITS = %i(spades diamonds clubs hearts).freeze

  attr_reader :cards

  def initialize
    @cards = [] #Array.new(52) { Card.new(:A, :spades) }

    SUITS.each do |suit|
      VALUES.each do |value|
        next if value == 1
        @cards << Card.new(value, suit)

      end

    end

  end



end
