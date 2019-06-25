vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  groups =  {}

  vehicles.each do |vehicle|    
    if groups[vehicle]
      groups[vehicle] += 1
    else
      groups[vehicle] = 1
    end
  end

  groups.each do |key, value|
    puts "#{key} => #{value}"
  end

end

count_occurrences(vehicles)