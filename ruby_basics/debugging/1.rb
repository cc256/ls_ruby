def find_first_nonzero_among(numbers)
  numbers.each do |n|                      # integers do not have an #each method   
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0) # bug: expects 1 argument- an array []
find_first_nonzero_among(1)                # bug