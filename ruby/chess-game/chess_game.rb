module Chess
  Chess::RANKS = Range.new(1, 8)
  Chess::FILES = Range.new('A', 'H')

  def self.valid_square?(rank, file)
    if rank.to_i > 0 && rank.to_i <= 8 && file >= 'A' && file <= 'H'
      true
    else
      false
    end
  end

  def self.nick_name(first_name, last_name)
    (first_name[0...2] + last_name[-2..]).upcase
  end

  def self.move_message(first_name, last_name, square)
    announce_name = nick_name(first_name, last_name)
    x, y = square.split(//)
    if valid_square?(y, x)
      "#{announce_name} moved to #{square}"
    else
      "#{announce_name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
