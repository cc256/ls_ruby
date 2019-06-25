class Person
  #attr_reader :name    #error
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"        #error, @name instance variable setter is not available. use attr_writer instead of attr_reader