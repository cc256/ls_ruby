# The following code is flawed. It currently allows @name to be modified from outside 
# the method via a destructive method call. Fix the code so that it returns a copy of 
# @name instead of a reference to it.

class Person
  #attr_reader :name                  # public name getter method
  
  def initialize(name)
    @name = name
  end

  def name                            # public name getter method.
    return "#{@name}"                 # returns string value instead of reference to it!
  end
  
end

person1 = Person.new('James')
person1.name.reverse!                 # uses copy and therefor avoids mutation!
puts person1.name                     # => James