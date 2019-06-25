class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(object)
    return self.grade > object.grade         # can access the method from outside the class
  end

  protected

  def grade             # grade getter method
    return @grade
  end
end


joe = Student.new("Joe", 5)
bob = Student.new("Bob", 2)

#puts joe.grade         # protected method `grade' called for #<Student:0x8a7de30 @name="Joe", @grade=5>
                        # can not access the method from outside the class

puts "Well done!" if joe.better_grade_than?(bob)
