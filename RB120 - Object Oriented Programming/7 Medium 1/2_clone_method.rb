# A fixed-length array is an array that always has a fixed number of elements. Write a class that 
# implements a fixed-length array, and provides the necessary methods to support the following code:

class FixedArray
  attr_reader :arr            # for check method fixed_array.arr()

  #attr_writer :arr

  def initialize(size)
    @arr = Array.new(size)
    @size = size
  end

  def [](index)               # getter method, interface for instance is .fixed_array[index].     
    #@arr[index]
    return @arr.fetch(index)         # raises IndexError if index out of bounds
  end

  def []=(index, element)     # setter method  
    begin
      @arr.fetch(index)       # is it possible? if not then index out of bounds and code jumps to rescue block where IndexError is returned to main 
      @arr[index] = element   # if it is possible then @arr[index] = element gets executed. without .fetch() command this would expand the array length.
    rescue
      return @arr.fetch(index) 
    end
  end

  def to_a()                                         
    #return @arr                      # return array
    return @arr.clone
  end

  def to_s()
    return "#{@arr}"                 # return string
                                     # you can reuse code like "return to_a.to_s"
  end

end

fix = FixedArray.new(5)
fix[3] = "X"
p fix
p a = fix.to_a()
p a[3] = "O"
p a
p fix                       # if method to_a() returns @arr then you can manipulate fix array values; therefor return array clone  "return @arr.clone"



# read more about deep copy: https://stackoverflow.com/questions/31455309/cloning-an-array-with-its-content
a = [
  '462664',
  '669722',
  '297288',
  '796928',
  '584497',
  '357431'
]
p b = a.clone
p b.object_id == a.object_id # => false
p a[1][2] = 'X'
p a[1] #66X722
p b[1] #66X722
