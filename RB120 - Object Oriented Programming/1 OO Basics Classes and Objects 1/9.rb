class Cat
  attr_accessor :name                         # method makes available getter and setter methods for :name 

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

