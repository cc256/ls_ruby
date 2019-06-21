numbers = [5, 9, 21, 26, 39]

divisible_by_three =  numbers.select do |number|
                        number % 3 == 0  # .select returns a new array containing elements selected 
                                         # only if the block's return value evaluates to true.
                      end

p divisible_by_three