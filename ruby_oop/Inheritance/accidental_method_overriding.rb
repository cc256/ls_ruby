class Parent
  def say_hi
    p "Hi from Parent."
  end
end

puts Parent.superclass      # => Object


class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end  
end

child = Child.new
child.say_hi         # => "Hi from Child."

# This means that, if you accidentally override a method that was originally defined
# in the Object class, it can have far-reaching effects on your code.
# For example, send is an instance method that all classes inherit from Object. If you
# defined a new send instance method in your class, all objects of your class will call 
# your custom send method, instead of the one in class Object, which is probably the one 
# they mean to call. Object send serves as a way to call a method by passing it a symbol 
# or a string which represents the method you want to call. The next couple of arguments 
# will represent the method's arguments, if any. Let's see how send normally works by making
# use of our Child class:

#son = Child.new
#son.send :say_hi       # => "Hi from Child."

# Let's see what happens when we define a send method in our Child class and then try to 
# invoke Object's send method:

lad = Child.new         # => wrong number of arguments (1 for 0) 'send'
lad.send :say_hi


# That said, one Object instance method that's easily overridden without any major side-effect 
# is the to_s method. You'll normally want to do this when you want a different string 
# representation of an object. Overall, it’s important to familiarize yourself with some of the 
# Object methods and make sure to not accidentally override them as this can have devastating 
# consequences for your application.