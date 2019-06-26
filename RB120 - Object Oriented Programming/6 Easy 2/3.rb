class House
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <(object)
    self.price < object.price       # object can access .price getter method                                           
  end                               # if home1 < home2 can be represented as method call home1.<(home2)      

  def >(object)
    self.price > object.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2             # => Home 1 is cheaper          < > ruby syntactic sugar?
puts "Home 1 is cheaper" if home1.<(home2)            # => Home 1 is cheaper
puts "Home 2 is more expensive" if home2 > home1      # => Home 2 is more expensive
puts "Home 2 is more expensive" if home2.>(home1)     # => Home 2 is more expensive