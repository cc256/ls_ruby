module Towable                        # add
  def can_tow?(pounds) 
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize
    @@number_of_vehicles += 1
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  #code omitted for brevity...
end

class MyTruck < Vehicle
  include Towable                      # add
  NUMBER_OF_DOORS = 2

end

puts Vehicle.number_of_vehicles
car = MyCar.new
truck = MyTruck.new
puts Vehicle.number_of_vehicles

puts truck.can_tow?(1000)               # add