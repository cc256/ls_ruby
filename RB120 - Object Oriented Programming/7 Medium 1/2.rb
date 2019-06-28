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
    return @arr                      # return array
  end


  def to_s()
    return "#{@arr}"                 # return string
  end

end


fixed_array = FixedArray.new(5)
  #p fixed_array.arr()

puts fixed_array[3] == nil                   #calls instance method []
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'                         #calls instance method []=
  #p fixed_array.arr()
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]
  #p fixed_array.arr()

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]
  #p fixed_array.arr()

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
  #p fixed_array.arr()
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'
  #p fixed_array.to_s()

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'
  #p fixed_array.arr()
puts("---------------")

  #p fixed_array

begin                           # in method [](index) use @arr.fetch(index), so that IndexError is raised in case index is out of bounds; @arr[index] returns Nil. 
  fixed_array[6]                # https://docs.ruby-lang.org/en/2.5.0/IndexError.html
  puts false
rescue IndexError
  puts true
end
  #p fixed_array

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end
  #p fixed_array

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
  #p fixed_array

puts("---------------")