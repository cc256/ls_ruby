USERNAME = "jack"
PASSWORD = "rabbiT"

loop do
  puts "Please enter user name:"
  user_name = gets.chomp

  puts "Please enter your password: "
  user_password = gets.chomp

  break if user_name == USERNAME && user_password == PASSWORD 
  puts "Authorization failed!"
end

puts "Welcome!"
