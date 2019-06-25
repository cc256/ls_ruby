def stringy(integer)
  string = ""

  integer.times do |n|
    if (n + 1).odd?           #or #(n + 1).odd? ? string += "1" : string += "0"
      string += "1"
    else
      string += "0"  
    end
  end


  return string
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'