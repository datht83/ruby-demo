#require './student.rb'
require_relative 'student.rb'
herd = []
def display_record(records)
  records.each do |record|
    puts record
  end
end


=begin
herd << Student.new("Dave Joens","43423243","CIS")
herd << Student.new("Sally Struthers","545345","CIS")
=end
student_file = File.open("students.txt")
while !student_file.eof?
  student = student_file.gets.chomp.split(/,/)
  herd << Student.new(student[0],student[1],student[2])
end
student_file.close

display_record(herd)

herd.each do |student|
  student.program = "Networking"
end

display_record(herd)