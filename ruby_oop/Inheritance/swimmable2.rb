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

class GoodDog < Animal
  include Swimmable
  include Climbable
end


puts "---GoodDog method lookup---"
puts GoodDog.ancestors
# GoodDog
# Climbable
# Swimmable
# Animal
# Walkable
# Object
# Kernel
# BasicObject



# There are several interesting things about the above output. First, this tells us that the order in 
# which we include modules is important. Ruby actually looks at the last module we included first. This
# means that in the rare occurrence that the modules we mix in contain a method with the same name, 
# the last module included will be consulted first. The second interesting thing is that the module 
# included in the superclass made it on to the method lookup path. That means that all GoodDog objects 
# will have access to not only Animal methods, but also methods defined in the Walkable module, as well
# as all other modules mixed in to any of its superclasses.

# Sometimes when you're working on a large project, it can be confusing where all these methods are 
# coming from. By understanding the method lookup path, we can have a better idea of where and how all
# available methods are organized.



