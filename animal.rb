class Animal
  attr_accessor :color,:name

  def initialize(name,color)
    @name = name
    @color = color
  end

  def ==(other)
    self.name == other.name && self.color == other.color # self.name.==(other.name)
  end

  def <=>(other)
    self.name <=> other.name #&& self.color == other.color # self.name.==(other.name)
  end

  def to_s
    return "#{@name}, #{@color}"
  end

  def speak
    "Hello, my name is : #{@name}"
  end

  def identify
    return "My name is #{@name} and I am a #{self.class}"
  end

  def to_csv
    return "#{@name},#{@color}"
  end

end

class Tiger < Animal
  def speak
    return super + " Grrrrrr"
  end
end

class Zebra < Animal
  attr_reader :stripes
  def initialize(name,color,stripes)
    @stripes = stripes
    super(name,color)
  end

  def to_csv
    return super + " #{@stripes}"
  end
end

class Hyena < Animal

end

a  = Zebra.new("Dave","gray",300)
b  = Zebra.new("Dave","gray",300)

if a == b   #a.==(b)
  puts"Yay"
else
  puts"Boo"
end

if a <=> b
  puts "OK"
else
  puts "NO"
end
