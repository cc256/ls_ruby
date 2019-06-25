class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n               # renaming from @ variable instance
    self.height = h             # setter method "name = " doesn't work, because ruby
    self.weight = w             # tought we were initializing local variables e.g x = 1
  end                           # therefore, we need to use self.name= to let ruby know      
                                # that we're calling a method.
                                # To be consistent, we could also adopt this syntax for the 
                                # getter methods as well, though it is not required.
  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."       # Added self. to be consistent.
  end

  def info_info                 # Note that prefixing self. is not restricted to just the accessor methods; 
    "Infoinfo: #{self.info}"    # you can use it with any instance method. For example, the info method is
  end                           # not a method given to us by attr_accessor, but we can still call it using self.info: 


end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.


puts sparky.info_info