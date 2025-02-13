module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo = ship_identifier[0..2].to_s
    return :A if %w[GAS OIL].include?(cargo)

    :B
  end
end
