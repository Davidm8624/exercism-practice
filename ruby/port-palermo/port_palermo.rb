module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
  short = ship_identifier.to_s
    if short.include?("GAS") || short.include?("OIL")
      return :A
    else
      return :B
    end
  end
end
