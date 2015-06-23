module Trig
  PI = 3.1416
  # class methods
  def Trig.sin(x)

  end
  def Trig.cos(x)

  end
end

module Moral
  VERY_BAD = 0
  BAD = 1
  def Moral.sin(badness)
    badness
  end
end

puts Trig.sin(Trig::PI/4)
puts Moral.sin(Moral::VERY_BAD)
