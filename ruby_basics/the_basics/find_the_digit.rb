thousands = 4936 / 1000
hundreds = (4936 % 1000) / 100
tens = ((4936 % 1000) % 100) / 10
ones = ((4936 % 1000) % 100) % 10

puts "thousands: #{thousands}"
puts "hundreds: #{hundreds}"
puts "tens: #{tens}"
puts "ones: #{ones}"