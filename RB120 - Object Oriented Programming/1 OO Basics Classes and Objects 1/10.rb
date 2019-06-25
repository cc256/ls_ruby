module Walkable
                                    # Walkable.walk()  # invoke walk method inside Walkable module
                                    # In that case error if " self. " missing. undefined method `walk' for Walkable:Module (NoMethodError)
  def walk                          
    puts "Let's go for a walk!"
  end

#  puts self
end


class Cat
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk




