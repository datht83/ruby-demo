puts "input your age: "
age = gets.to_i
puts "input your name"
name = gets.chomp
age_second = age * 365 * 24 * 60 * 60
puts name + " is " + age_second.to_s + " second old."
puts "#{name} is #{age_second} second old"