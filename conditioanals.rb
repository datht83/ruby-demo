print "Please enter your height in inches: "
height = gets.to_i

print "Please enter your weight in pounds: "
weight = gets.to_i

bmi = (weight * 703) / (height ** 2)

puts"Your Bmi is: #{bmi}"

if bmi < 16
  puts"Seriously underweight"
elsif bmi >=16 and bmi <= 18
  puts"underweight"
elsif bmi >=19 and bmi <= 24
  puts"normal weight"
elsif (bmi >= 25) and (bmi <=29)
  puts"overweight"
elsif bmi >= 30 and bmi <= 35
  puts"seriously overweight"
else
  puts"You are going to die"
end