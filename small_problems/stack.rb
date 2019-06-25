def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  begin
    return "H e l l o, " + space_out_letters(person)
  rescue
    puts "Something is wrong!!"
  end
end

def decorate_greeting(person)
  begin
    puts "" + greet(person) + ""
  rescue TypeError => e
    puts "Something is wrong!#{e.message}"
  end
end

#decorate_greeting("John")
decorate_greeting(1)
