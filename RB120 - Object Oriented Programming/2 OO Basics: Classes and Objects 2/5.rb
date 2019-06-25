class Cat
  @@tracks_instances = 0        # class variable

  def initialize                # creates instance and increments the class variable
    @@tracks_instances += 1      
  end

  def self.total                # returns class variable
    @@tracks_instances
  end

end



kitty1 = Cat.new
kitty2 = Cat.new

p Cat.total