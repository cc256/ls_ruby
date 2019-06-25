class Vehicle
  @@number_of_vehicles = 0

  def initialize
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
  
end


class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)      # bug: overrides Vehicle method initialize. add super
    super()                               # bugfix.puts Vehicle.number_of_vehicles
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  
  #Override the to_s method to create a user friendly print out of your object.
  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end

puts Vehicle.number_of_vehicles

my_car = MyCar.new("2010", "Ford Focus", "silver")
#puts my_car  # => My car is a silver, 2010, Ford Focus.

your_car = MyCar.new("2011", "Ford Fiesta", "red")
#puts your_car

puts
puts Vehicle.number_of_vehicles
