class CircularQueue
  attr_accessor :arr, :start_index, :end_index
  #attr_reader :start_index
  #attr_reader :end_index

  def initialize(size)
    #@arr = [1,2,3]
    @arr = Array.new(size)
    @size = size
    @start_index = 0
    @end_index = 0
  end

  def enqueue(element)                                  # add element
    @arr[@end_index] = element                          # simply overwrites; can be written if not empty then dequeue(), and then add new element.  
                                                        # BUG: if you owerwrite then you have to change the @start_index + 1 asweö!!
    @end_index = (@end_index + 1 ) % @size              # rollover implementation
  end

  def dequeue                                           # delete element
    if @arr[@start_index] # not empty / nil
      tmp = @arr[@start_index]

      @arr[@start_index] = nil
      @start_index = (@start_index + 1) % @size           # rollover implementation
    
      return tmp                                          # returns the object that was removed
    else 
      return @arr[@start_index]
    end

  end


end
queue = CircularQueue.new(3)
    #p "#{queue.start_index} - #{queue.end_index()}"     
puts queue.dequeue == nil
    #p "#{queue.start_index} - #{queue.end_index()}"
queue.enqueue(1)
queue.enqueue(2)
  #p queue.arr()
  #p "#{queue.start_index} - #{queue.end_index()}"

puts ("---")
  p "#{queue.start_index} - #{queue.end_index()}"
puts queue.dequeue == 1
  p queue.arr()
  p "#{queue.start_index} - #{queue.end_index()}"

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
  p queue.arr()
  p "#{queue.start_index} - #{queue.end_index()}"
  puts
queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
  p queue.arr()
  p "#{queue.start_index} - #{queue.end_index()}"
  puts

puts queue.dequeue #== 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil