def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do   # loops are needed
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp  # don't use .to_i; look at the valid_number? method
    return number.to_i if valid_number?(number)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number # method
  second_number = read_number

  break if first_number * second_number < 0
  #break if (first_number > 0 && second_number < 0) || (first_number < 0 && second_number > 0)
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

sum = first_number.to_i + second_number.to_i
puts "#{first_number} + #{second_number} = #{sum}"