module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = (1..8)
  FILES = ('A'..'H')

  def self.valid_square?(rank, file)
    RANKS.include?(rank) and FILES.include?(file) ? true: false
  end

  def self.nickname(first_name, last_name)
    first_name[(..1)].upcase+last_name[(-2..)].upcase
  end

  def self.move_message(first_name, last_name, square)
    nick_name = nickname(first_name, last_name)
    if valid_square?(square[1].to_i, square[0])
      "#{nick_name} moved to #{square}"
    else
      "#{nick_name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
