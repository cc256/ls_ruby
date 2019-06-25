class GoodDog
  def initialize(name)
    @name = name        #instance variable | state of the object
  end

  def name()            # renamed from "get_name"
    return @name
  end

  def name=(name)       # char "=" allows us to use more natural assignement syntax
    @name = name        # renamed from "set_name="
  end




  def speak()           #instance method  | has access to instance variable
    return "#{@name} says arf!"
  end

end

sparky = GoodDog.new("Sparky")
puts sparky.speak()
#puts sparky.name()   # gives error, because method name() doesn't exist or is unavailable
puts sparky.name      # method ()
#sparky.set_name=("Sparky the Second")
sparky.name = "Sparky the Second"    # alternative to sparky.set_name=("Sparky the Second")

puts sparky.name   # method   
puts sparky.speak()


fido = GoodDog.new("Fido")
#puts fido.speak()
