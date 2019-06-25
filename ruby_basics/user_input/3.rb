puts "Do you want me to print something? (y/n)"
choice = gets.chomp # if .chomp not used then 'p choice' would be "y\n"
if choice == 'y'
  puts "something"
end
