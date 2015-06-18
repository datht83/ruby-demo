=begin
states = []
states = File.open("states.txt").readlines

puts states.inspect
=end


state_file = File.open("states.txt")
# danh cho array
=begin
states = []
while !state_file.eof?
  first = state_file.gets.chomp
  puts first.inspect
  states << first
end
state_file.close
states << "Langson,LS"
puts states.inspect
puts states.size
# save data
state_file = File.open('states.txt','w')
state_file.puts states
#ta cung co the viet nhu sau
=begin
states.each do |state|
  state_file.puts state
end
=end
# danh cho hash
states = {}
while !state_file.eof?
  first = state_file.gets.chomp
  data = first.split(',')
  states[data[0]] = data[1]
end
state_file.close
puts states.inspect
puts states.size
puts states['Hanoi']
