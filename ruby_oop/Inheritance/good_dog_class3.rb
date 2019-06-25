class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"     # Ruby provides us with a built-in function called super that allows us to
  end                                 # call methods up the inheritance hierarchy. When you call super from within 
end                                   # a method, it will search the inheritance hierarchy for a method by the
                                      # same name and then invoke it. 

sparky = GoodDog.new
puts sparky.speak        # => "Hello! from GoodDog class"
