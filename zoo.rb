require_relative 'animal.rb'
#Main Program
class Zoo

  def initialize
    @cage = []
  end

  def add_animal(animal)
    @cage << animal
  end

  def inventory
    ret_str = ""
    @cage.each_with_index do |animal,index|
      ret_str += "#{index + 1}. " + animal.to_csv + "\n"
    end
    return ret_str
  end

  def count
    return @cage.count
  end

  def make_noise
    ret_str = ""
    @cage.each do |animal|
      ret_str += animal.speak + "\n"
    end
    return ret_str
  end

  def find(record_number)
    return @cage[record_number -1]
  end

end


zoo = Zoo.new
10.times do |num|
  zoo.add_animal(Zebra.new("Zebra#{num}","black and white", rand(20..100)))
end

5.times do |num|
  zoo.add_animal(Tiger.new("tiger#{num}","orange"))
end
#puts zoo.inspect
puts zoo.count
puts zoo.inventory
puts
puts zoo.make_noise

print "View which Animal? "
user_choice = gets.to_i

puts zoo.find(user_choice).inspect

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