class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

    
  def production_rate_per_hour
    if @speed >= 1 and @speed <= 4
      return 221 * @speed
    elsif @speed >= 5 and @speed <= 8
      return (221 * @speed * 90.0) / 100.0
    elsif @speed == 9
      return (221 * @speed * 80.0) / 100.0
    else
      return (221 * @speed * 77.0) / 100.0
    end
  end

  def working_items_per_minute
    rph = production_rate_per_hour
    return (rph / 60).floor
  end
end
