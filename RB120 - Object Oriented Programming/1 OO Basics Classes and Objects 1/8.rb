class Cat
  attr_reader :name                             # alternative getter method for name     
  attr_writer :name                             # setter method for name
  def initialize(name)
    @name = name
  end

  
  def greet
    puts "Hello! My name is #{name}"           
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = 'Luna'                           # renames; uses setter method made available by attr_writer; "kitty.name=('Luna')" works as well
kitty.greet

