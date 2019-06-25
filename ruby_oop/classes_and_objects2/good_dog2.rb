class GoodDog
  DOG_YEARS = 7   #constant, a variable that you never want to change

  attr_accessor :name, :age

# Note that we used the setter methods in the initialize method to initialize the
# @name and @age instance variables given to us by the attr_accessor method. 
  def initialize(n, a)
    self.name = n                 #attr_accessor method gives us self.name=() method (and with that the @name variable) vs @name declaration
    self.age  = a * DOG_YEARS
  end


  # test to access @ instance variable
  def test
    puts "#{@name} - #{self.name} - #{name}"
  end

end

sparky = GoodDog.new("Sparky", 4)

# We then used the age getter method to retrieve the value from the object.
# attr_accessor method gives us setter methods ( .age=() or.age = ) and getter method ( .age() )
puts sparky.age             # => 28

# test to access @ instance variable
sparky.test
