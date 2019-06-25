class Cat
  def initialize(name)
    @name = name                          #instance variable
    puts "Hello! My name is #{@name}"
  end
end

kitty = Cat.new('Sophie')

