herd = []
def display_record(records)
  records.each do |record|
    puts record
  end
end

class Student
  attr_accessor :name,:sid,:program

  def initialize(name,sid,program)
    @name = name
    @sid = sid
    @program = program
    @classes = []
  end

  def add_class(kclass)
    @classes << kclass
  end

  def remove_class(kclass)
    @classes.delete(kclass)
  end

  def to_s
    return "#{@name.ljust(20)} #{@sid.ljust(20)} #{@program.ljust(20)}"
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