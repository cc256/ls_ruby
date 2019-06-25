numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do |number|
                    number * 2  # .map uses the return value of the block as the new element's value
                  end

#doubled_numbers = numbers.map { |number| number * 2 }
p doubled_numbers