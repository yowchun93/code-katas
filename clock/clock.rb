class Clock
  attr_reader :hour, :minute

  def initialize(hour: nil, minute: nil)
    @hour   = hour
    @minute = minute
    handle_rolling_minutes!
    handle_negative_hours!
  end

  def to_s
    "#{readable_hour}:#{readable_minute}"
  end

  private

  def handle_rolling_minutes!
    if !@minute.nil? && @minute >= 60
      new_minute  = @minute
      total_hours = 0

      while new_minute >= 60
        total_hours += 1
        new_minute  -= 60
      end

      # @hour could be nil
      if @hour.nil?
        @hour = total_hours
      else
        @hour  += total_hours
      end
      @minute = new_minute
    end
  end

  def handle_negative_hours!
    if @hour.negative?
      @hour = 24 + @hour
    end
  end

  # Presenter layer
  def hours_rolling_over?
    hour >= 24
  end

  def rolling_hours
    new_hour = hour
    remaining = 0

    while new_hour >= 24 do
      new_hour  = new_hour - 24
      remaining = new_hour
    end

    if remaining.to_s.size <= 1
      "0#{remaining}"
    else
      remaining.to_s
    end
  end

  def readable_hour
    if hour.to_s.size <= 1
      "0#{hour}"
    elsif hours_rolling_over?
      rolling_hours
    else
      hour.to_s
    end
  end

  def readable_minute
    if minute.nil?
      "00"
    elsif minute.to_s.size <= 1
      "0#{minute}"
    else
      "#{minute}"
    end
  end
end