def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

first_number = nil
second_number = nil

loop do
  loop do
    puts ">> Please enter a positive or negative integer:"
    first_number = gets.chomp  # don't use .to_i; look at the valid_number? method
    break if valid_number?(first_number)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end

  #repeats above; refactor the input loop into a separate method
  loop do
    puts ">> Please enter a positive or negative integer:"
    second_number = gets.chomp
    break if valid_number?(second_number)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end


  break if (first_number.to_i > 0 && second_number.to_i < 0) || (first_number.to_i < 0 && second_number.to_i > 0)
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

sum = first_number.to_i + second_number.to_i

puts "#{first_number} + #{second_number} = #{sum}"





