# Using the following code, add the appropriate accessor methods so that @name is capitalized upon assignment.

class Person
  attr_reader :name           # name getter method

  def name=(name)             # name setter method uses "=" syntactic sugar
    @name = name.capitalize
  end

end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name             # => Elizabeth