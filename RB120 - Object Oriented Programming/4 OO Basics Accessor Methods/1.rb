class Person
  attr_reader :name       # or instead of attr_reader and attr_writer add just:
  attr_writer :name       # attr_accessor :name
  
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name