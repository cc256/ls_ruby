number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  
  if number_a != 5 && number_b != 5 
    next
  end
  # alternative 
  #next unless number_a == 5 || number_b == 5

  puts "5 was reached!"
  break
end

puts number_a.to_s + " " + number_b.to_s