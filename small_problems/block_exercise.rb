word = "elaborate"

if word =~ /lab/
  puts word
end

if word.match(/lab/)
  puts word
end

if /lab/.match(word)
  puts word
end