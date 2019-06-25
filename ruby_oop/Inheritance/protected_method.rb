# Public and private methods are most common, but in some less common situations, 
# we'll want an in-between approach. We can use the protected keyword to create protected methods.
# The easiest way to understand protected methods is to follow these two rules:
#   - from outside the class, protected methods act just like private methods.
#   - from inside the class, protected methods are accessible just like public methods.

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method   #We can call a protected method from within the class, even with self prepended. 
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end


fido = Animal.new
p fido.a_public_method        # => Will this work? Yes, I'm protected!

p fido.a_protected_method     # We can't call protected methods from outside of the class.
                              #=> NoMethodError: protected method `a_protected_method' called for #<Animal:0x007fb174157110>

# The two rules for protected methods apply within the context of inheritance as well.
# There are some exceptions to this rule, but we won't worry about that yet. If you remember 
# those two rules about protected methods, that should be good enough for the time being.


