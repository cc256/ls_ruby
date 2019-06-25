class Cat
  def initialize(name)
    @name = name
  end

  def name                                      # getter method for instance variable name
    return @name 
  end


  def greet
    puts "Hello! My name is #{name}"           # uses getter method instead of instance variable name
  end
end

kitty = Cat.new('Sophie')
kitty.greet

