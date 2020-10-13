#  Sample
#  https://exercism.io/tracks/ruby/exercises/clock/solutions/decb04ba0500485a9bc63ef998c21dd2
class Clock
  HOURS_IN_DAY = 24

  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour   = hour
    @minute = minute
    convert_hours_to_minutes
  end

  def to_s
    "#{format('%02d', hours)}:#{format('%02d', minutes)}"
  end

  # (clock1 + Clock.new(minute: 3)
  # returns a new clock
  def +(clock)
    clock = Clock.new(minute: @minute + clock.minute)
    clock
  end

  def -(clock)
    clock = Clock.new(minute: @minute - clock.minute)
    clock
  end

  def ==(other_clock)
    self.to_s == other_clock.to_s
  end

  private

  def convert_hours_to_minutes
    minutes = @hour * 60
    @minute += minutes
  end

  def hours
    hours = (@minute / 60) % HOURS_IN_DAY
  end

  def minutes
    minutes = @minute % 60
  end
end