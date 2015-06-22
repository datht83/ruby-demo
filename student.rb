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