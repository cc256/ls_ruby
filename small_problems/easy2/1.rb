def teddys_age()
  random = Random.new
  return "Teddy is #{random.rand(20..200)} years old!"
end

puts teddys_age()