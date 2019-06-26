# Modify the following code so that the value of @phone_number can't be modified outside the class.

class Person
  #attr_accessor :phone_number
  attr_reader :phone_number

  def initialize(number)
    @phone_number = number
  end

  private 
  attr_writer :phone_number

end

person1 = Person.new(1234567899)
puts person1.phone_number                           # => 1234567899


person1.phone_number = 9987654321                   # => NoMethodError
puts person1.phone_number