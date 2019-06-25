class Cat
  COLOR = "purple"
  attr_accessor :name

  def initialize(name)
    self.name = name                #uses setter made availabe by attr_accessor :name
  end

  def greet
    puts "Hello! My name is #{self.name} and I'm a #{COLOR} cat!"
  end
end


kitty = Cat.new('Sophie')
kitty.greet