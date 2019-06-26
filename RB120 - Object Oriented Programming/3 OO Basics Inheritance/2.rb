class Vehicle
  attr_reader :year

  def start_engine
    puts 'Ready to go!'
  end

  def initialize(year)
    @year = year
    start_engine
  end
end

class Truck < Vehicle
end

truck1 = Truck.new(1994)
puts truck1.year