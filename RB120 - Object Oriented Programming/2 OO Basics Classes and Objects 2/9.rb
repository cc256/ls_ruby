class Person
  attr_writer :secret

  def share_secret
    puts "#{secret()}"    # method secret() is made availabe by attr_reader :secret; 
  end                     # in this case we can't use self.secret and we can either use secret or secret() 
  
  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret