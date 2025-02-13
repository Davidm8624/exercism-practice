module Blackjack
  def self.parse_card(card)
    case card
    when 'ace'
      11
    when 'two'
      2
    when 'three'
      3
    when 'four'
      4
    when 'five'
      5
    when 'six'
      6
    when 'seven'
      7
    when 'eight'
      8
    when 'nine'
      9
    when 'ten'
      10
    when 'jack', 'queen', 'king'
      10
    when 'joker'
      0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)
    case score
    when 4..11
      'low'
    when 12..16
      'mid'
    when 17..20
      'high'
    when 21
      'blackjack'
    when 22
      'bust'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    score = card_range(card1, card2)
    case score
    when 'bust'
      'P'
    when 'blackjack'
      return 'W' unless %w[ace king queen jack ten].include?(dealer_card)

      'S'

    when 'high'
      'S'
    when 'mid'
      return 'H' if parse_card(dealer_card) >= 7

      'S'

    when 'low'
      'H'
    end
  end
end
