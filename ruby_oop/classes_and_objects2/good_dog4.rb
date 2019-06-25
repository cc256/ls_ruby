class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self                    # it is returning the calling object
  end

# So  you can see that self, inside a class but outside an instance method, is actually 
# referring to the class itself. Therefore, a method definition prefixed with self is the 
# same as defining the method on the class. That is, def self.a_method is equivalent to 
# def GoodDog.a_method. That's why it's a class method; it's actually being defined on the class.
  puts self
end


sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self      # it is returning the calling object. in this case sparky object