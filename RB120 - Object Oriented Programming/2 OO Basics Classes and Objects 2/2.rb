class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def rename(name)                   # instance method
    return self.name = name          # uses setter method made availabe by attr_accessor
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name
