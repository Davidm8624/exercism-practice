class AssemblyLine
  def initialize(speed)
    @speed = speed.to_f
  end
  
  def chances(rate)
    case rate
      when 1..4
        return (1.0 * rate)
      when  5..8
        return (0.9 * rate)
      when 9
        return (0.8 * rate)
      when 10
        return (0.77 * rate)
    end
  end

  def production_rate_per_hour
    return chances(@speed)*221
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end

