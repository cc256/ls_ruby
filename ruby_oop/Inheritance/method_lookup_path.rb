module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

# We have three modules and one class. We've mixed in one module into the Animal class. 
# The method lookup path is the path Ruby takes to look for a method. We can see this path 
# with the ancestors class method.

puts "---Animal method lookup---"
puts Animal.ancestors

# This means that when we call a method of any Animal object, first Ruby looks in the 
# Animal class, then the Walkable module, then the Object class, then the Kernel module, 
# and finally the BasicObject class.

puts 
fido = Animal.new
puts fido.speak                  # => I'm an animal, and I speak!
# Ruby found the speak method in the Animal class and looked no further.

puts fido.walk 
# Ruby first looked for the walk instance method in Animal, and not finding it there, 
# kept looking in the next place according to our list, which is the Walkable module. 
# It saw a walk method there, executed it, and stopped looking further.

puts fido.swim
# Ruby traversed all the classes and modules in the list, and didn't find a swim method, so it threw an error.
