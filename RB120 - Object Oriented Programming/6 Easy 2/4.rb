class Transform
  def self.lowercase(word)          # class method
    return word.downcase
  end

  attr_accessor :word

  def initialize(word)              # instance method
    return self.word = word         # without attr_accessor "self.word = " does not work, because its a setter method 
  end                               # with syntactic sugar (with https://en.wikipedia.org/wiki/Syntactic_sugar)
                                    # it can be written as "return self.word=(word)"

  def uppercase                     # instance method
    return self.word.upcase   
  end
end


my_data = Transform.new('abc')      
puts my_data.uppercase              # => ABC
puts Transform.lowercase('XYZ')     # => xyz

