class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(side)                          # add
    @height = side
    @width = side
  end
end


square = Square.new(5)
puts "area of square = #{square.area}"          # uses method area() from Rectangle class