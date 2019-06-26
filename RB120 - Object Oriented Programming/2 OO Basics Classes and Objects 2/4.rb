class Cat

  def self.generic_greeting                 # class method
    puts "Hello! I'm a cat!"
  end

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def personal_greeting                     # instance method
    puts "Hello! My name is #{self.name}"   # uses getter method made availabe by attr_reader
            
  end

end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting
