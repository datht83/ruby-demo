# 10.days.ago
# x.days.ago
# time object that is 10 days ago

class Fixnum

  def minutes
    return self * 60
  end

  def hours
    return  self * 60 * 60
  end

  def days
    return self * 24 * 60 * 60
  end

  def weeks
    return self * 7 * 24 * 60 * 60
  end

  def ago
    return Time.now - self
  end
end
puts Time.now
puts 1.days.ago
puts 10.minutes.ago
puts 10.hours.ago
puts 1.weeks.ago