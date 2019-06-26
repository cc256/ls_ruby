# Using the following code, add an instance method named compare_secret that compares the 
# value of @secret from person1 with the value of @secret from person2.

class Person
  attr_writer :secret

  def compare_secret(other_person_object)
    return  secret() == other_person_object.secret()              #self.sercret() method usabe because attr_reader is protected
  end                                                             # if private then secret or sercret() method must be used, but
                                                                  # other_person_object.secret() call does not work!! because of the private. Outside call.

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)          # => false
