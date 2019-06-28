class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate
  def initialize(name, year, parking)
    @name = name                           #1
    @year = year                           #2
    @parking = parking                     #3   
  end
end

class Undergraduate
  def initialize(name, year)
    @name = name                           #4
    @year = year                           #5
  end
end

p under = Undergraduate.new("Jim", 2000)