numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = 
              #numbers.map do |n|   # bug: wrong method is being used - if true then n else nil; because of the return value
              #n if n.even?
              numbers.select do |n| # returs only when condition is true 
                n.even?             # "n.even?" is enough
              end

p even_numbers # expected output: [2, 6, 8]