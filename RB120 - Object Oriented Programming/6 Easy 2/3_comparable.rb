class House
  attr_reader :price

  def initialize(price)
    @price = price
  end

  include Comparable                # https://docs.ruby-lang.org/en/2.5.0/Comparable.html

  def <=>(object)                   # home2
    self.price <=> object.price     # <=> gives access to <, <=, ==, >=, and >) and the method between?. include Comparable essential!
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2             # => Home 1 is cheaper
#puts "Home 1 is cheaper" if home1.<(home2)            # => Home 1 is cheaper
puts "Home 2 is more expensive" if home2.>(home1)     # => Home 2 is more expensive
#puts "Home 2 is more expensive" if home2.>(home1)     # => Home 2 is more expensive

home3 = House.new(100_000)
home4 = House.new(100_000)
puts "Home 3 and home 4 prices are the same" if home3 == home4 # => Home 3 and home 4 prices are the same.