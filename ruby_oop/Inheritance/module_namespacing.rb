# The first use case we'll discuss is using modules for namespacing. In this context, namespacing means
# organizing similar classes under a module. In other words, we'll use modules to group related classes. 
# Therein lies the first advantage of using modules for namespacing. It becomes easy for us to recognize 
# related classes in our code. The second advantage is it reduces the likelihood of our classes colliding
# with other similarly named classes in our codebase. Here's how we do it:

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

# We call classes in a module by appending the class name to the module name with two colons(::)

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')           # => "Arf!"
kitty.say_name('kitty')       # => "kitty"