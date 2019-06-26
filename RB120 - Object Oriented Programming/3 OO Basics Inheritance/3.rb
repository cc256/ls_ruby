class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  attr_reader :bed_type               # add getter and setter methods
  
  def initialize(year, bed_type)      # add add bed_type param
    super(year)                       # add 
    @bed_type = bed_type              # add
  end
end

class Car < Vehicle
end

truck1 = Truck.new(1994, 'Short')
puts truck1.year
puts truck1.bed_type

car1 = Car.new(2000)
puts car1.year