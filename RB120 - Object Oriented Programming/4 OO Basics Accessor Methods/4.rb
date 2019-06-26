# Using the following code, add the appropriate accessor methods. Keep in mind that 
# the last_name getter shouldn't be visible outside the class, while the first_name
# getter should be visible outside the class.

class Person
  attr_reader :first_name
  attr_writer :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name               #self.first_name or first_name or @first_name
  end                                     #self.last_name getter cannot be used because it's private method.

  private
  attr_reader :last_name
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?          # => false