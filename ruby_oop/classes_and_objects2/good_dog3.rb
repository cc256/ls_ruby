class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age  = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)


#"puts sparky" is equivalent to "puts sparky.to_s"

#And yes, it works! We were able to change the output by overriding the to_s instance method.

puts sparky

#in this version somehow to_s instance method overrides .inspect method
p sparky.inspect


#Another important attribute of the to_s method is that it's also automatically called in string interpolation.


# In summary, the to_s method is called automatically on the object when we use it with puts or 
# when used with string interpolation. This fact may seem trivial at the moment, but knowing when
# to_s is called will help us understand how to read and write better OO code.
