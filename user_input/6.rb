PASSWORD = "rabbiT"

loop do
  puts "Please enter your password: "
  user_password = gets.chomp

  break if user_password == PASSWORD
  puts "Invalid password!"
end

puts "Welcome!"
