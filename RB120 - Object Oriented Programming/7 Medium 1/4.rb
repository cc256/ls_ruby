class CircularQueue
  # For checks:
  #attr_accessor :arr, :start_index, :end_index
  #attr_reader :start_index
  #attr_reader :end_index

  def initialize(size)
    @arr = Array.new(size)
    @size = size
    @start_index = 0
    @end_index = 0
  end

  def enqueue(element)                                  # ADD element
    if @arr[@end_index]                                 # if there is an element, then remove it first.
      dequeue()
      enqueue(element)                                  # recursion; goes to else statement, because dequeue() already removed the element
                                                        # and therefor statment "if @arr[@end_index]" returns nil
                                                        # NB! if you                       
    else
      @arr[@end_index] = element                        # adds an element
      @end_index = (@end_index + 1 ) % @size            # rollover implementation                                                         
    end
    #return element                                     # not asked, but you can return the element that you added; otherwise returns @end_index
  end

  def dequeue                                           # REMOVE element
    if @arr[@start_index]                               # if true (meaning not nil, false) 
      tmp = @arr[@start_index]

      @arr[@start_index] = nil                                
      @start_index = (@start_index + 1) % @size         # rollover implementation
    
      return tmp                                        # returns the object that was removed
    else 
      return @arr[@start_index]                         # returns nil.
    end
  end

end

#Checks
#p "#{queue.start_index} - #{queue.end_index()}"  
#p queue.arr()
queue = CircularQueue.new(3)
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
puts queue.dequeue == 5
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