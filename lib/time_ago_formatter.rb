require 'active_support'
require 'active_support/core_ext/object'

class TimeAgoFormatter
  def initialize(time)
    @now = Time.now
    @time = time
  end

  def to_human
    seconds = 1
    minutes = 60
    hours = 1.hour
    day = 1.day.to_i
    month = 1.month
    year = 1.year

    if @now - @time < 30.seconds
      @human = 'in the last minute'
    else
      @human = 'test'
    end

    @human
  end
end
