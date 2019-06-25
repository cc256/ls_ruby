# The second use case for modules we'll look at is using modules as a container for methods, 
# called module methods. This involves using modules to house other methods. This is very useful
# for methods that seem out of place within your code. Let's use our Mammal module to demonstrate:

module Mammal
  # .. code omitted 

  def self.some_out_of_place_method(num)
    num ** 2
  end
end


# Defining methods this way within a module means we can call them directly from the module:
p value = Mammal.some_out_of_place_method(4)


# We can also call such methods by doing:
p value = Mammal::some_out_of_place_method(4)
#although the former is the preferred way.