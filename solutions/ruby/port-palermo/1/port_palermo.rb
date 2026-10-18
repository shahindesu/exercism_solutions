module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE
  TERM_A = :A
  TERM_B = :B
  def self.get_identifier(city)
    return city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    if ["OIL", "GAS"].include? ship_identifier.to_s[0,3]
      return TERM_A
    else
      return TERM_B
    end
  end
end
