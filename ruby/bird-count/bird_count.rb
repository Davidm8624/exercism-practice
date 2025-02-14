class BirdCount
  def self.last_week
    return [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @last_week = birds_per_day
  end

  def yesterday
    return @last_week[5]
  end

  def total
    return @last_week.sum
  end

  def busy_days
    i = 0
    @last_week.each do |day|
      if (day >= 5)
        i = i + 1
      end
    end
    return i
  end

  def day_without_birds?
    bool = false
    @last_week.each do |day|
      if (day == 0)
        bool = true
      end
    end
    return bool
  end
end
