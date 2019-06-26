# Refactor these classes so they all use a common superclass, and inherit behavior as needed.

class Vehicle                                     # add
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end
  
  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

puts car = Car.new("Ford", "focus")               # check
puts bike = Motorcycle.new("Honda", "mz 101")
puts truck = Truck.new("Scania", "7000", "2000 kg")
puts truck.payload