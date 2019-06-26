module Walkable                          # add    
  def walk                              
    puts "#{@name} #{gait()} forward"    # Think that you are inside the specific class e.g. Person and therefor you can 
  end                                    # access its name variable @name (because of attr_reader :name you can use self.name too)
end                                      # Gait method is accessable only with "gait" or "gait()" call. You are not able to use
                                         #self.gait() method call, because its private.

class Person
  include Walkable                       #add
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable                       #add
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable                        #add
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end


mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"
