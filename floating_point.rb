print "please enter the total amount of your bill: "
bill_amount = gets.to_f
print "What percentage tip do you want? "
tip = gets.to_f / 100

puts "your tip will be : #{bill_amount * tip}"
#puts "your tip will be : " + (bill_amount * tip).to_s
tip_amount = sprintf("$%.2f",bill_amount * tip)
puts "your tip will be : #{tip_amount}"
