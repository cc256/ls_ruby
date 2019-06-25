class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  private
  # We have made the human_years method private by placing it under the private reserved word. 
  # So what is it good for if we can't call it? private methods are only accessible from other 
  # methods in the class. 
  def human_years         
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
sparky.human_years