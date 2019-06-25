def calculate_bonus(salary, boolean)
  bonus = 0
  if boolean 
    return salary / 2
  end
  return bonus
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
