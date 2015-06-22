class Animal
  attr_accessor :color,:name

  def initialize(name,color)
    @name = name
    @color = color
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

#Main Program
zoo = []
10.times do |num|
  zoo << Zebra.new("Zebra#{num}","black and white", rand(20..100))
end
puts zoo.inspect
puts zoo.count
puts zoo[rand(0..zoo.count - 1)].speak
zoo.each do |animal|
  #puts "#{animal.name} #{animal.color} #{animal.stripes}"
end

zoo.each do |animal|
  puts animal.to_csv
end

=begin
tiger = Tiger.new("tiger","orange")
zebra = Zebra.new("Zach","black",20)

whoopie = Hyena.new("Whoopie","brown")

puts whoopie.inspect
puts whoopie.speak
puts whoopie.identify
puts zebra.inspect
puts zebra.speak

puts tiger.inspect
puts tiger.speak
puts tiger.identify
=end