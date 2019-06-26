class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = @mileage + miles                  # or self.mileage
    @mileage = total                          # or self.mileage
  end

  def print_mileage
    puts @mileage                             # or self.mileage
  end
end

car = Car.new
car.mileage = 5000                            # setter from attr_accessor
car.increment_mileage(678)                    
car.print_mileage  # should print 5678
