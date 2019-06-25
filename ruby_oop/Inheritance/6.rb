class Vehicle

  def initialize(year)
    @year = year
  end

  def year                                           # getter method for year 
    @year
  end

  def age
    return "Your age is #{age_of_the_vehicle()}"     # access to private method
  end

  private
  def age_of_the_vehicle                             # calculate the age of vehicle
    time = Time.now
    return time.year - self.year
  end

end


vehicle = Vehicle.new(2000)           # input vehicle year
#puts vehicle.age_of_the_vehicle()    # error: private method

puts vehicle.age()
