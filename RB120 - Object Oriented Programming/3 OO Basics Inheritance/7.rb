# Using the following code, determine the lookup path used when invoking cat1.color. Only list 
# the classes that were checked by Ruby when searching for the #color method.

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

puts Cat.ancestors           #
cat1.color                   # Ruby first looks for the color method in Cat class, then in Animal class 
                             # were it is (#attr_reader - color getter method) and looks no further.

