# This is an example of using a class variable and a class method to keep track of a
# class level detail that pertains only to the class, and not to individual objects.

class GoodDog
  @@number_of_dogs = 0                    # class variable, not instance variable

  def initialize                          # instance method with class variable  
    @@number_of_dogs += 1                 # we can access class variables from within instance method
  end

  def self.total_number_of_dogs           # class method, not instance method
    @@number_of_dogs                      # return class variable
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2
