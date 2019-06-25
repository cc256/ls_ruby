class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal              
  def initialize(color)
    super
    @color = color
  end
end

class BadDog < Animal             # When called with specific arguments, eg. super(a, b), 
  def initialize(age, name)       # the specified arguments will be sent up the method lookup chain. "
    super(name)
    @age = age 
  end
end

bruno = GoodDog.new("brown")        # => #<GoodDog:0x007fb40b1e6718 @color="brown", @name="brown">
p bruno

jack = BadDog.new(2, "bear")        # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">
p jack
