module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal

end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
end

# And now Fish and Dog objects can swim, but objects of other classes won't be able to
# Using modules to group common behaviors allows us to build a more powerful, flexible and DRY design.

# Note: A common naming convention for Ruby is to use the "able" suffix on whatever verb describes 
# the behavior that the module is modeling. You can see this convention with our Swimmable module. 
# Likewise, we could name a module that describes "walking" as Walkable. Not all modules are named in
# this manner, however, it is quite common.
sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new


puts sparky.swim                 # => I'm swimming!
puts neemo.swim                  # => I'm swimming!

puts paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>

