class Pet
  attr_reader :name

  def initialize(name)
    @name = name
  end
  
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
