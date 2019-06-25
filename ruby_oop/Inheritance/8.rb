class Person
  def hi
    puts "Hi"
  end
  
  private          #bugfix: move the hi method above the private reserved word
end

bob = Person.new
bob.hi             # error: private method `hi' called for #<Person:0x007ff61dbb79f0>

