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
    when 'jack'
      10
    when 'queen'
      10
    when 'king'
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    hand = parse_card(card1) + parse_card(card2)
    case hand
    when (4..11) then 'low'
    when (12..16) then 'mid'
    when (17..20) then 'high'
    when 21 then 'blackjack'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    hand = card_range(card1, card2)
    dealer_value = parse_card(dealer_card)
    if [card1, card2] == %w[ace ace]
      'P'
    elsif hand == 'blackjack'
      dealer_value < 10 ? 'W' : 'S'
    elsif hand == 'high'
      'S'
    elsif hand == 'mid'
      dealer_value >= 7 ? 'H' : 'S'
    elsif hand == 'low'
      'H'
    end
  end
end
