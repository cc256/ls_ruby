# Using the following code, add the appropriate accessor methods so that @name is returned with the added prefix 'Mr.'.

class Person
  attr_reader :name         # name getter method

  def name=(name)           # name setter method with "="
    @name = "Mr. " + name   # or @name = "Mr. #{name}"
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name           # => Mr. James
