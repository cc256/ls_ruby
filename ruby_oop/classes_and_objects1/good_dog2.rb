class GoodDog
  attr_accessor :name       # The attr_accessor method takes a symbol as an argument, 
                            # which it uses to create the method name for the getter 
                            # and setter methods. That one line replaced two method 
                            # definitions.

                            # If we want only getter method without the setter method?
                            # Then we would want to use attr_reader,
                            # And if you only want the setter method, you can use the
                            # attr_writer

                            # All of the attr_* methods take a Symbol as parameters
                            # If there are more states you're tracking, you can use this syntax:
                            # attr_accessor :name, :height, :weight

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says arf!"     # renamed from @name
                            # before: referenced the @name instance variable, 
                            # now: use the name getter method that we created and 
                            # that is given to us now by attr_accessor

                            # By removing the @ symbol, we're now calling the instance method, 
                            # rather than the instance variable.
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"       #getter method
sparky.name = "Spartacus"                       #setter method
puts sparky.name            # => "Spartacus"    #getter method 
