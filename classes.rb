class Square

  def initialize(side_lenght)
    @side_lenght = side_lenght
  end

  def side_length
    return @side_lenght
  end

  def side_lenght=(side_length)
    @side_lenght = side_length
  end

  def perimeter
    return @side_lenght * 4
  end

  def area
    return @side_lenght * @side_lenght
  end

  def to_s
    return "this Square has a side length of #{@side_lenght} and an area of #{area}"
  end

end
a = String.new('abc xyz')
my_square = Square.new(20)
your_square = Square.new(30)
my_square.side_lenght = 5
square = my_square.to_s
puts a
puts square
puts my_square.side_length
puts my_square.perimeter
puts my_square.area
puts my_square.inspect
puts your_square.inspect