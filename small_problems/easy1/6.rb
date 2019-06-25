def reverse_words(string)
  words = string.split(" ")

  words.each do |word|
    word.reverse!
  end

  return words.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS