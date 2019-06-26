class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new     # => creates instance and assigns it to variable thing
puts Something.dupdata    # => calls class method, outputs "ByeBye"
puts thing.dupdata        # => calls instace method, outputs "HelloHello"
